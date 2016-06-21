require "KgPhoneNumber/version"

module KgPhoneNumber
  def self.detect phone_number

    if /\A\+996\d{9}\z/ =~ phone_number
      return phone_number
    end

    if  /\A996\d{9}\z/ =~ phone_number
      return "+#{phone_number}"
    end

    if /\A00(?<match_number>996\d{9})\z/ =~ phone_number
      return "+#{match_number}"
    end

    if /\A0(?<match_number>\d{9})\z/ =~ phone_number
      return "+996#{match_number}"
    end

    if /\A(?<match_number>\d{9})\z/ =~ phone_number
      return "+996#{match_number}"
    end
  end
end
