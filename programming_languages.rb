def reformat_languages(languages)
  reformat_languages = {}
  languages.each {|style, all_language|
    all_language.each {|language, char|
      char.each {|type, type_answer|
        reformat_languages[language] = {
          type: type_answer,
          style: []
        }
      }
    }
  }
  languages.each {|style, all_language|
    all_language.each {|language, char|
      reformat_languages[language][:style].push(style)
    }
  }
  reformat_languages
end
