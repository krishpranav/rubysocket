#!/usr/bin/env ruby

module Parser
    @regexp = /([^:]+):([0-9]+)?(\+)?:([^:]+)?:?([\s\S]*)?/
  
    def self.decode(string)
      if pieces = string.match(@regexp)
        {type: pieces[1], id: pieces[2], end_point: pieces[4], data: pieces[5]}
      else
        {type: '0'}
      end
    end
end