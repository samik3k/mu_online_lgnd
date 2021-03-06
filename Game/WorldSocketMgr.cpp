/*
 * Copyright (C) 2008-2014 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2008  MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include <boost/system/error_code.hpp>

static void OnSocketAccept(tcp::socket&& sock)
{
    sWorldSocketMgr.OnSocketOpen(std::forward<tcp::socket>(sock));
}

class WorldSocketThread : public NetworkThread<WorldSocket>
{
public:
    void SocketAdded(std::shared_ptr<WorldSocket> sock) override
    {
        
    }

    void SocketRemoved(std::shared_ptr<WorldSocket> sock) override
    {
        
    }
};

WorldSocketMgr::WorldSocketMgr() : BaseSocketMgr(), _socketSendBufferSize(-1), m_SockOutUBuff(65536), _tcpNoDelay(true)
{
}

WorldSocketMgr::~WorldSocketMgr()
{
	
}

bool WorldSocketMgr::StartNetwork(boost::asio::io_service& service, std::string const& bindIp, uint16 port, int32 threadCount)
{
    BaseSocketMgr::StartNetwork(service, bindIp, port, threadCount);

    _acceptor->AsyncAcceptManaged(&OnSocketAccept);
    return true;
}

void WorldSocketMgr::StopNetwork()
{
	BaseSocketMgr::StopNetwork();
}

void WorldSocketMgr::OnSocketOpen(tcp::socket&& sock)
{
    // set some options here
    if (_socketSendBufferSize >= 0)
    {
        boost::system::error_code err;
        sock.set_option(boost::asio::socket_base::send_buffer_size(_socketSendBufferSize), err);
        if (err && err != boost::system::errc::not_supported)
        {
			sLog->outError(LOG_DEFAULT, "WorldSocketMgr::OnSocketOpen sock.set_option(boost::asio::socket_base::send_buffer_size) err = %s", err.message().c_str());
			return;
        }
    }

    // Set TCP_NODELAY.
    if (_tcpNoDelay)
    {
        boost::system::error_code err;
        sock.set_option(boost::asio::ip::tcp::no_delay(true), err);
        if (err)
        {
			sLog->outError(LOG_DEFAULT, "WorldSocketMgr::OnSocketOpen sock.set_option(boost::asio::ip::tcp::no_delay) err = %s", err.message().c_str());
			return;
        }
    }

    BaseSocketMgr::OnSocketOpen(std::forward<tcp::socket>(sock));
}

NetworkThread<WorldSocket>* WorldSocketMgr::CreateThreads() const
{
    return new WorldSocketThread[GetNetworkThreadCount()];
}