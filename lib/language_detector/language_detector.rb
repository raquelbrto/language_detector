# lib/language_detector.rb

require "cld3"
require "nokogiri"

module LanguageDetector
  class Detector
    def initialize(text)
      @text = text
    end

    def clean_text
      cleaned_text = Nokogiri::HTML(@text).text

      cleaned_text.gsub!(/[^a-zA-Z\s]/, '')

      cleaned_text
    end

    def detect_language
      cleaned_text = clean_text
      detector = CLD3::NNetLanguageIdentifier.new(min_num_bytes: 0, max_num_bytes: 1000)
      result = detector.find_language(cleaned_text)

      result&.language.upcase || "unknown"
    end
  end
end
