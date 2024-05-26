# frozen_string_literal: true

RSpec.describe LanguageDetector do
  it "has a version number" do
    expect(LanguageDetector::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end

  it 'detects English text correctly' do
    detector = LanguageDetector::Detector.new("<p>Hello, this is a test!</p>")
    expect(detector.detect_language).to eq('en')
  end

  it 'detects French text correctly' do
    detector = LanguageDetector::Detector.new("<p>Bonjour, ceci est un test !</p>")
    expect(detector.detect_language).to eq('fr')
  end

  it 'removes HTML tags and punctuation' do
    detector = LanguageDetector::Detector.new("<p>Hello, this is a test!</p>")
    cleaned_text = detector.clean_text
    expect(cleaned_text).to eq('Hello this is a test')
  ends
end
