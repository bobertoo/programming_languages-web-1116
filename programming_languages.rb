def reformat_languages(languages)
  # your code here
  reform = {}
  arr = []
  languages.each do |keyz, valz|
    valz.each do |language, lan_type|
      if reform[language]
        reform[language][:style] << keyz
      else
        arr = [keyz]
        reform[language] = {:type => lan_type.values[0], :style => arr}
      end
    end
  end
  reform
end
