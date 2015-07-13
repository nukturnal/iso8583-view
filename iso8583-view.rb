require 'da_funk'

class IsoMessage < ISO8583::Message
  include ISO8583
  mti_format N, :length => 4
  mti 200 , "Authorization Request Acquirer Gateway"
  mti 210 , "Authorization Request Acquirer Gateway"
  bmp  2  , "Primary account number (PAN)", LLVAR_N
  bmp  3  , "Processing Code"      , N , :length =>  6
  bmp  4  , "Amount Transaction" , N , :length => 12
  bmp  5  , "Amount, settlement", N,  :length => 12
  bmp  6  , "Amount, cardholder billing", N  , :length => 12
  bmp  7  , "Date Time Transmission", N, :length => 10
  bmp  8  , "Amount, cardholder billing fee", N, :length => 8
  bmp  9  , "Conversion rate, settlement",  N,  :length => 8
  bmp  10 , "Conversion rate, cardholder billing",  N,   :length => 8
  bmp  11 , "Device System Trace Audit Number", N , :length => 6
  bmp  12 , "Local Time Transacton(hhmmss)", N , :length => 6
  bmp  13 , "Local Date Transaction(MMDD)" , N  , :length => 4
  bmp  14 , "Date, expiration", N,  :length => 4
  bmp  15 , "Date, settlement", N,  :length => 4
  bmp  16 , "Date, conversion", N,  :length => 4
  bmp  17 , "Date, capture",  N,  :length => 4
  bmp  18 , "Merchant type",  N,  :length => 4
  bmp  19 , "Acquiring institution country code", N,  :length => 3
  bmp  22 , "Point Of Service Entry Mode" , N , :length => 3
  bmp  23 , "Card Sequence Number", N , :length => 3
  bmp  32 , "Bank Number", LLVAR_N
  bmp  35 , "Track 2 Data",LLVAR_N
  bmp  41 , "Device Identification",   ANS        , :length => 8
  bmp  42 , "Merchant Identification", ANS        , :length => 15
  bmp  45 , "Track 1 Data", LLVAR_ANS
  bmp  48 , "Additional Data", LLLVAR_ANS
  bmp  49 , "Currency Code" , AN         , :length => 3
  bmp  52 , "PIN(Encrypted)", ANS, :length => 16
  bmp  55 , "ICC data" , LLLVAR_ANS
  bmp  61 , "Point Of Sale Data" , LLLVAR_ANS
  bmp  126, "Security Data Elements"  , LLLVAR_ANS

  def setup
    @str = "0200B238060120C192080000000000000004003000000000000400071317082800003114082807130510491100000001941379999754403663384=491120100183343529190000061100040000000000400800300201986E90DFAE4BBFCAC2A2665A0899997544036633845F3401499F02060000000004009F03060000000000009F1A020076950500000400005F2A0209869A031507139C01009F3704AF02B730820258009F360201199F10200FA5F1A070F0000000000000000000010F0108567800000000000000000000009F2608954A7D5141BBE1FF9F2701809F0607A0990000001010102001008EL0107SC002020000000000528-056-508004016000000000006.2.000500800000611006020000000000000VERIFONE0330010014002020FFFF654321000C200127"
    @iso = IsoMessage.parse(@str, true)

    puts "#{@iso}"

  end
end

set = IsoMessage.new
set.setup
