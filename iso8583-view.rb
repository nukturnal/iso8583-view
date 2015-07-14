require 'da_funk'

class IsoMessage < ISO8583::Message
  include ISO8583
  mti_format N, :length => 4
  mti 100 , "Pre Authorization request"
  mti 110 , "Request Response"
  mti 200 , "Acquirer Financial Request"
  mti 202 , "Acquirer Financial Confirmation"
  mti 210 , "Issuer Response to Financial Request"
  mti 212 , "Acquirer Response Financial Confirmation"
  mti 220 , "Acquirer Financial Advice"
  mti 230 , "Issuer Response to Financial Advice"
  mti 400 , "Acquirer Reversal Request"
  mti 402 , "Acquirer Reversal Confirmation"
  mti 410 , "Acquirer Reversal Response"
  mti 412 , "Acquirer Reversal Response Confirmation"
  mti 420 , "Acquirer Reversal Advice"
  mti 430 , "Issuer Reversal Response"
  mti 800 , "Network Management Request"
  mti 810 , "Network Management Response"
  bmp  2  , "Primary account number (PAN)"  , LLVAR_N
  bmp  3  , "Processing Code" , N , :length =>  6
  bmp  4  , "Amount Transaction"  , N , :length => 12
  bmp  5  , "Amount, settlement"  , N,  :length => 12
  bmp  6  , "Amount, cardholder billing"  , N  , :length => 12
  bmp  7  , "Date Time Transmission"  , N , :length => 10
  bmp  8  , "Amount, cardholder billing fee"  , N, :length => 8
  bmp  9  , "Conversion rate, settlement" ,  N,  :length => 8
  bmp  10 , "Conversion rate, cardholder billing" ,  N,   :length => 8
  bmp  11 , "Device System Trace Audit Number"  , N , :length => 6
  bmp  12 , "Local Time Transacton(hhmmss)" , N , :length => 6
  bmp  13 , "Local Date Transaction(MMDD)"  , N  , :length => 4
  bmp  14 , "Date, expiration"  , N,  :length => 4
  bmp  15 , "Date, settlement"  , N,  :length => 4
  bmp  16 , "Date, conversion"  , N,  :length => 4
  bmp  17 , "Date, capture" ,  N,  :length => 4
  bmp  18 , "Merchant type" ,  N,  :length => 4
  bmp  19 , "Acquiring institution country code"  , N,  :length => 3
  bmp  20 , "PAN extended, country code"  , N, :length => 3
  bmp  21 , "Forwarding institution. country code", N , :length => 3
  bmp  22 , "Point Of Service Entry Mode" , N , :length => 3
  bmp  23 , "Application PAN sequence number" , N , :length => 3
  bmp  24 , "Function code" , N , :length => 3
  bmp  25 , "Point of service condition code" , N , :length => 2
  bmp  26 , "Point of service capture code", N ,  :length => 2
  bmp  27 , "Authorizing identification response length"  , N , :length => 1
  bmp  28 , "Amount, transaction fee" ,  N , :length => 8
  bmp  29 , "Amount, settlement fee"  , N , :length => 8
  bmp  30 , "Amount, transaction processing fee", N , :length => 8
  bmp  31 , "Amount, settlement processing fee",  N , :length => 8
  bmp  32 , "Bank Number" , LLVAR_N
  bmp  33 , "Forwarding institution identification code"  , LLVAR_N
  bmp  34 , "Primary account number, extended"  , LLVAR_N
  bmp  35 , "Track 2 Data"  ,LLVAR_N
  bmp  36 , "Track 3 data"  , LLLVAR_N
  bmp  37 , "Retrieval reference number", AN  , :length => 12
  bmp  38 , "Authorization identification response" , AN  , :length =>  6
  bmp  39 , "Response code" , AN  , :length => 2
  bmp  40 , "Service restriction code"  , AN  ,  :length => 3
  bmp  41 , "Device Identification" , ANS        , :length => 8
  bmp  42 , "Merchant Identification" , ANS        , :length => 15
  bmp  43 , "Card acceptor name/location" , ANS , :length => 40
  bmp  44 , "Additional response data"  , LLVAR_ANS
  bmp  45 , "Track 1 Data", LLVAR_ANS
  bmp  46 , "Additional data - ISO" , LLLVAR_ANS
  bmp  47 , "Additional data - national"  , LLLVAR_ANS
  bmp  48 , "Additional Data", LLLVAR_ANS
  bmp  49 , "Currency Code" , AN         , :length => 3
  bmp  50 , "Currency code, settlement" , AN  , :length => 3
  bmp  51 , "Currency code, cardholder billing" , AN  , :length => 3
  bmp  52 , "PIN(Encrypted)"  , ANS, :length => 16
  bmp  53 , "Security related control information"  , N , :length => 16
  bmp  54 , "Additional amounts"  , LLLVAR_AN
  bmp  55 , "ICC data" , LLLVAR_ANS
  bmp  56 , "Reserved ISO"  , LLLVAR_ANS
  bmp  57 , "Reserved national" , LLLVAR_ANS
  bmp  58 , "Reserved national" , LLVAR_ANS
  bmp  59 , "Reserved national" , LLLVAR_ANS
  bmp  60 , "Reserved national" , LLLVAR_ANS
  bmp  61 , "Point Of Sale Data" , LLLVAR_ANS
  bmp  62 , "Additional Data Transaction" , LLLVAR_ANS
  bmp  63 , "Reserved private"  , LLLVAR_ANS
  bmp  64 , "Message authentication code (MAC)" , B , :length => 16
  bmp  65 , "Bitmap, extended"  , B , :length => 1
  bmp  67 , "Extended payment code" , N , :length => 2
  bmp  68 , "Receiving institution country code"  , N , :length => 3
  bmp  69 , "Settlement institution country code" , N , :length => 3
  bmp  70 , "Network management information code" , N , :length => 3
  bmp  71 , "Message number"  , N , :length => 4
  bmp  72 , "Message number, last"  , N , :length => 4
  bmp  73 , "Date, action (YYMMDD)" , N , :length => 6
  bmp  74 , "Credits, number" , N , :length => 10
  bmp  75 , "Credits, reversal number" , N , :length => 10
  bmp  76 , "Debits, number" , N , :length => 10
  bmp  77 , "Debits, reversal number" , N , :length => 10
  bmp  78 , "Transfer number" , N , :length => 10
  bmp  79 , "Transfer, reversal number" , N , :length => 10
  bmp  80 , "Inquiries number"  , N , :length => 10
  bmp  81 , "Authorizations, number"  , N , :length => 10
  bmp  82 , "Credits, processing fee amount"  , N , :length => 12
  bmp  83 , "Credits, transaction fee amount" , N , :length => 12
  bmp  84 , "Debits, processing fee amount" , N , :length => 12
  bmp  85 , "Debits, transaction fee amount"  , N , :length => 12
  bmp  86 , "Credits, amount" , N , :length =>  16
  bmp  87 , "Credits, reversal amount"  , N , :length => 16
  bmp  88 , "Debits, amount"  , N , :length => 16
  bmp  89 , "Debits, reversal amount" , N , :length => 16
  bmp  90 , "Original data elements"  , N , :length => 42
  bmp  91 , "File update code"  , AN  , :length => 1
  bmp  92 , "File security code"  , AN  , :length =>2
  bmp  93 , "Response indicator"  , AN  , :length => 5
  bmp  94 , "Service indicator" , AN  , :length => 7
  bmp  95 , "Replacement amounts" , AN  , :length => 42
  bmp  96 , "Message security code" , B , :length => 64
  bmp  97 , "Amount, net settlement"  , N , :length => 16
  bmp  98 , "Payee" , ANS , :length => 25
  bmp  99 , "Settlement institution identification code"  , LLVAR_N
  bmp  100, "Receiving institution identification code" , LLVAR_N
  bmp  101, "File name" , LLVAR_ANS
  bmp  102, "Account identification 1"  , LLVAR_ANS
  bmp  103, "Account identification 2"  , LLVAR_ANS
  bmp  104, "Transaction description" , LLLVAR_ANS
  bmp  105, "Reserved for ISO use"  , LLLVAR_ANS
  bmp  106, "Reserved for ISO use"  , LLLVAR_ANS
  bmp  107, "Reserved for ISO use"  , LLLVAR_ANS
  bmp  108, "Reserved for ISO use"  , LLLVAR_ANS
  bmp  109, "Reserved for ISO use"  , LLLVAR_ANS
  bmp  110, "Reserved for ISO use"  , LLLVAR_ANS
  bmp  111, "Reserved for ISO use"  , LLLVAR_ANS
  bmp  112, "Reserved for national use" , LLLVAR_ANS
  bmp  113, "Reserved for national use" , LLLVAR_ANS
  bmp  114, "Reserved for national use" , LLLVAR_ANS
  bmp  115, "Reserved for national use" , LLLVAR_ANS
  bmp  116, "Reserved for national use" , LLLVAR_ANS
  bmp  117, "Reserved for national use" , LLLVAR_ANS
  bmp  118, "Reserved for national use" , LLLVAR_ANS
  bmp  119, "Reserved for national use" , LLLVAR_ANS
  bmp  120, "Reserved for national use" , LLLVAR_ANS
  bmp  121, "Reserved for national use" , LLLVAR_ANS
  bmp  122, "Reserved for national use" , LLLVAR_ANS
  bmp  123, "Reserved for national use" , LLLVAR_ANS
  bmp  124, "Reserved for national use" , LLLVAR_ANS
  bmp  125, "Reserved for national use" , LLLVAR_ANS
  bmp  126, "Security Data Elements"  , LLLVAR_ANS
  bmp  127, "Reserved for national use" , LLLVAR_ANS
  bmp  128, "Reserved for national use" , LLLVAR_ANS

  def iso_get_message(size_header, size_trailler, message)
    if (size_header.nil? || size_header.eql?(0)) && (size_trailler.nil? || size_trailler.eql?(0))
      @iso = IsoMessage.parse(message, true)
    else
      if !size_header.nil? && !size_header.eql?(0)
        msg = message.slice(size_header, message.length - size_header)
      end
      if !size_trailler.nil? && !size_trailler.eql?(0)
        if !msg.nil?
          msg = msg.slice(0, msg.length - size_trailler)
        else
          msg = message.slice(0, message.length - size_trailler)
        end
      end
      @iso = IsoMessage.parse(msg, true)
    end
    puts "#{@iso}"
  end
end

# just message

m = "0200B238060120C192080000000000000004003000000000000400071317082800003114082807130510491100000001941379999754403663384=491120100183343529190000061100040000000000400800300201986E90DFAE4BBFCAC2A2665A0899997544036633845F3401499F02060000000004009F03060000000000009F1A020076950500000400005F2A0209869A031507139C01009F3704AF02B730820258009F360201199F10200FA5F1A070F0000000000000000000010F0108567800000000000000000000009F2608954A7D5141BBE1FF9F2701809F0607A0990000001010102001008EL0107SC002020000000000528-056-508004016000000000006.2.000500800000611006020000000000000VERIFONE0330010014002020FFFF654321000C200127"

# header

#m = "ISO002ENISCVGYX10200200723C040100C180081699772361114326390030000000000423000714175049000522145049071435077911100000001941000006110004000000000040160030020200600204986102001008EL0107SC002020000000002311315495230040160000000000003.3100500800000611006020000000000000INGENICO"

# trailler

#m = "0200B238060120C192080000000000000004003000000000000400071317082800003114082807130510491100000001941379999754403663384=491120100183343529190000061100040000000000400800300201986E90DFAE4BBFCAC2A2665A0899997544036633845F3401499F02060000000004009F03060000000000009F1A020076950500000400005F2A0209869A031507139C01009F3704AF02B730820258009F360201199F10200FA5F1A070F0000000000000000000010F0108567800000000000000000000009F2608954A7D5141BBE1FF9F2701809F0607A0990000001010102001008EL0107SC002020000000000528-056-508004016000000000006.2.000500800000611006020000000000000VERIFONE0330010014002020FFFF654321000C200127ABCDEFGHIJKLMN"

# header and trailler

#m = "ISO002ENISCVGYX10200200B238060120C192080000000000000004003000000000000400071317082800003114082807130510491100000001941379999754403663384=491120100183343529190000061100040000000000400800300201986E90DFAE4BBFCAC2A2665A0899997544036633845F3401499F02060000000004009F03060000000000009F1A020076950500000400005F2A0209869A031507139C01009F3704AF02B730820258009F360201199F10200FA5F1A070F0000000000000000000010F0108567800000000000000000000009F2608954A7D5141BBE1FF9F2701809F0607A0990000001010102001008EL0107SC002020000000000528-056-508004016000000000006.2.000500800000611006020000000000000VERIFONE0330010014002020FFFF654321000C200127ABCDEFGHIJKLMN"

set = IsoMessage.new
set.iso_get_message(nil, nil, m)
