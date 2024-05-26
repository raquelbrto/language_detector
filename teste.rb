require_relative "lib/language_detector"

detector = LanguageDetector::Detector.new("<p>Hello, this is a test!</p>")
puts detector.detect_language # Deve retornar "en"

detector = LanguageDetector::Detector.new("<p>Bonjour, ceci est un test !</p>")
puts detector.detect_language # Deve retornar "fr"