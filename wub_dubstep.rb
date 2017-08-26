# CODEWARS
# Input
#
# The input consists of a single non-empty string, consisting only of uppercase English letters, the string's length doesn't exceed 200 characters
#
# Output
#
# Return the words of the initial song that Polycarpus used to make a dubsteb remix. Separate the words with a space.
#
# Examples




  def song_decoder(song)
    # p song.split('WUB').select { |i| i!= "" }.join(',').gsub(/,/, ' ')

    p song.gsub(/WUB/, ' ').strip.gsub(/  /, ' ')
  end

  song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB")
  #  =>  WE ARE THE CHAMPIONS MY FRIEND
