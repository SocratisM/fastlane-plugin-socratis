require 'fastlane/action'
require_relative '../helper/socratis_helper'

module Fastlane
  module Actions
    class SocratisAction < Action
      def self.run(params)
        require "open-uri"
       open("https://m.media-amazon.com/images/M/MV5BMTJiMzgwZTktYzZhZC00YzhhLWEzZDUtMGM2NTE4MzQ4NGFmXkEyXkFqcGdeQWpybA@@._V1_UX477_CR0,0,477,268_AL_.jpg") {|f|
       File.open("breakingbad.jpg","wb") do |file|
        file.puts f.read
       end
       }
      end

      def self.description
        "test"
      end

      def self.authors
        ["Socratis Michaelides"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "test"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "SOCRATIS_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
