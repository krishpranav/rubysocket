#!/usr/bin/env ruby

require "base64"
require "socket"
require "uri"
require "digest/md5"
require "digest/sha1"
require "openssl"
require "stringio"

class WebSocket

    class << self
        attr_accessor(:debug)
    end
    
    class Error < RuntimeError
    end

    WEB_SOCKET_GUID = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"
    OPCODE_CONTINUATION = 0x00
    OPCODE_TEXT = 0x01
    OPCODE_BINARY = 0x02
    OPCODE_CLOSE = 0x08
    OPCODE_PING = 0x09
    OPCODE_PONG = 0x0a

    def initialize(arg, params = {})
        if params[:server]

            @server = params[:server]
            @socket = arg
            line = gets()
            if !line
                raise(WebSocket::Error "Client disconnect without sending anything")
            end
        end
    end

end
