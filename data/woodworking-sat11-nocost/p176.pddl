; woodworking task with 215 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 822823

(define (problem wood-prob-sat-176)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white black mauve red green blue - acolour
    teak walnut cherry oak beech pine mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    
    (boardsize-successor s0 s1)
    (boardsize-successor s1 s2)
    (boardsize-successor s2 s3)
    (boardsize-successor s3 s4)
    (boardsize-successor s4 s5)
    (boardsize-successor s5 s6)
    (boardsize-successor s6 s7)
    (boardsize-successor s7 s8)
    (boardsize-successor s8 s9)
    (boardsize-successor s9 s10)
    (boardsize-successor s10 s11)
    (has-colour glazer0 blue)
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer0 mauve)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 black)
    (wood p0 walnut)
    (surface-condition p0 rough)
    (treatment p0 glazed)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (available p3)
    (colour p3 blue)
    (wood p3 cherry)
    (surface-condition p3 rough)
    (treatment p3 colourfragments)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (available p6)
    (colour p6 mauve)
    (wood p6 cherry)
    (surface-condition p6 rough)
    (treatment p6 colourfragments)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (available p18)
    (colour p18 green)
    (wood p18 walnut)
    (surface-condition p18 verysmooth)
    (treatment p18 glazed)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (available p24)
    (colour p24 white)
    (wood p24 mahogany)
    (surface-condition p24 smooth)
    (treatment p24 colourfragments)
    (goalsize p24 small)
    
    
    
    
    (available p25)
    (colour p25 black)
    (wood p25 walnut)
    (surface-condition p25 verysmooth)
    (treatment p25 varnished)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (available p29)
    (colour p29 red)
    (wood p29 cherry)
    (surface-condition p29 verysmooth)
    (treatment p29 colourfragments)
    (goalsize p29 small)
    
    
    
    
    (available p30)
    (colour p30 natural)
    (wood p30 beech)
    (surface-condition p30 smooth)
    (treatment p30 colourfragments)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (available p35)
    (colour p35 mauve)
    (wood p35 beech)
    (surface-condition p35 smooth)
    (treatment p35 glazed)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (available p39)
    (colour p39 green)
    (wood p39 cherry)
    (surface-condition p39 smooth)
    (treatment p39 glazed)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (available p60)
    (colour p60 green)
    (wood p60 walnut)
    (surface-condition p60 rough)
    (treatment p60 glazed)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (available p66)
    (colour p66 blue)
    (wood p66 beech)
    (surface-condition p66 rough)
    (treatment p66 colourfragments)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (available p74)
    (colour p74 red)
    (wood p74 oak)
    (surface-condition p74 rough)
    (treatment p74 colourfragments)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (available p82)
    (colour p82 blue)
    (wood p82 pine)
    (surface-condition p82 verysmooth)
    (treatment p82 colourfragments)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (available p84)
    (colour p84 black)
    (wood p84 pine)
    (surface-condition p84 verysmooth)
    (treatment p84 varnished)
    (goalsize p84 large)
    
    
    
    
    (available p85)
    (colour p85 green)
    (wood p85 beech)
    (surface-condition p85 verysmooth)
    (treatment p85 glazed)
    (goalsize p85 small)
    
    
    
    
    (available p86)
    (colour p86 red)
    (wood p86 walnut)
    (surface-condition p86 rough)
    (treatment p86 glazed)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 small)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 medium)
    
    
    
    
    (available p123)
    (colour p123 red)
    (wood p123 teak)
    (surface-condition p123 rough)
    (treatment p123 colourfragments)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (available p130)
    (colour p130 red)
    (wood p130 walnut)
    (surface-condition p130 verysmooth)
    (treatment p130 colourfragments)
    (goalsize p130 small)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 large)
    
    
    
    
    (available p136)
    (colour p136 black)
    (wood p136 teak)
    (surface-condition p136 verysmooth)
    (treatment p136 varnished)
    (goalsize p136 medium)
    
    
    
    
    (unused p137)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 small)
    
    
    
    
    (unused p139)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 large)
    
    
    
    
    (unused p141)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 large)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (unused p145)
    (goalsize p145 medium)
    
    
    
    
    (available p146)
    (colour p146 black)
    (wood p146 oak)
    (surface-condition p146 smooth)
    (treatment p146 varnished)
    (goalsize p146 small)
    
    
    
    
    (available p147)
    (colour p147 mauve)
    (wood p147 oak)
    (surface-condition p147 rough)
    (treatment p147 glazed)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 small)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 small)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 large)
    
    
    
    
    (unused p153)
    (goalsize p153 large)
    
    
    
    
    (unused p154)
    (goalsize p154 medium)
    
    
    
    
    (available p155)
    (colour p155 white)
    (wood p155 walnut)
    (surface-condition p155 verysmooth)
    (treatment p155 varnished)
    (goalsize p155 small)
    
    
    
    
    (unused p156)
    (goalsize p156 medium)
    
    
    
    
    (unused p157)
    (goalsize p157 large)
    
    
    
    
    (available p158)
    (colour p158 natural)
    (wood p158 mahogany)
    (surface-condition p158 rough)
    (treatment p158 varnished)
    (goalsize p158 medium)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 small)
    
    
    
    
    (unused p161)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (unused p165)
    (goalsize p165 large)
    
    
    
    
    (unused p166)
    (goalsize p166 small)
    
    
    
    
    (unused p167)
    (goalsize p167 medium)
    
    
    
    
    (available p168)
    (colour p168 red)
    (wood p168 pine)
    (surface-condition p168 rough)
    (treatment p168 colourfragments)
    (goalsize p168 large)
    
    
    
    
    (unused p169)
    (goalsize p169 large)
    
    
    
    
    (available p170)
    (colour p170 blue)
    (wood p170 oak)
    (surface-condition p170 smooth)
    (treatment p170 glazed)
    (goalsize p170 large)
    
    
    
    
    (unused p171)
    (goalsize p171 small)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 small)
    
    
    
    
    (unused p174)
    (goalsize p174 small)
    
    
    
    
    (available p175)
    (colour p175 natural)
    (wood p175 cherry)
    (surface-condition p175 verysmooth)
    (treatment p175 glazed)
    (goalsize p175 medium)
    
    
    
    
    (unused p176)
    (goalsize p176 large)
    
    
    
    
    (unused p177)
    (goalsize p177 large)
    
    
    
    
    (unused p178)
    (goalsize p178 large)
    
    
    
    
    (unused p179)
    (goalsize p179 small)
    
    
    
    
    (unused p180)
    (goalsize p180 medium)
    
    
    
    
    (available p181)
    (colour p181 natural)
    (wood p181 mahogany)
    (surface-condition p181 smooth)
    (treatment p181 varnished)
    (goalsize p181 medium)
    
    
    
    
    (unused p182)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 small)
    
    
    
    
    (unused p184)
    (goalsize p184 large)
    
    
    
    
    (unused p185)
    (goalsize p185 large)
    
    
    
    
    (unused p186)
    (goalsize p186 small)
    
    
    
    
    (unused p187)
    (goalsize p187 medium)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (unused p189)
    (goalsize p189 medium)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (available p191)
    (colour p191 mauve)
    (wood p191 beech)
    (surface-condition p191 smooth)
    (treatment p191 varnished)
    (goalsize p191 large)
    
    
    
    
    (unused p192)
    (goalsize p192 small)
    
    
    
    
    (unused p193)
    (goalsize p193 small)
    
    
    
    
    (unused p194)
    (goalsize p194 large)
    
    
    
    
    (available p195)
    (colour p195 natural)
    (wood p195 beech)
    (surface-condition p195 rough)
    (treatment p195 varnished)
    (goalsize p195 small)
    
    
    
    
    (unused p196)
    (goalsize p196 small)
    
    
    
    
    (unused p197)
    (goalsize p197 large)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 small)
    
    
    
    
    (unused p200)
    (goalsize p200 medium)
    
    
    
    
    (unused p201)
    (goalsize p201 large)
    
    
    
    
    (unused p202)
    (goalsize p202 large)
    
    
    
    
    (unused p203)
    (goalsize p203 large)
    
    
    
    
    (available p204)
    (colour p204 green)
    (wood p204 teak)
    (surface-condition p204 verysmooth)
    (treatment p204 colourfragments)
    (goalsize p204 large)
    
    
    
    
    (unused p205)
    (goalsize p205 medium)
    
    
    
    
    (unused p206)
    (goalsize p206 large)
    
    
    
    
    (unused p207)
    (goalsize p207 small)
    
    
    
    
    (unused p208)
    (goalsize p208 medium)
    
    
    
    
    (unused p209)
    (goalsize p209 medium)
    
    
    
    
    (unused p210)
    (goalsize p210 medium)
    
    
    
    
    (unused p211)
    (goalsize p211 medium)
    
    
    
    
    (unused p212)
    (goalsize p212 large)
    
    
    
    
    (available p213)
    (colour p213 red)
    (wood p213 walnut)
    (surface-condition p213 rough)
    (treatment p213 colourfragments)
    (goalsize p213 large)
    
    
    
    
    (available p214)
    (colour p214 mauve)
    (wood p214 walnut)
    (surface-condition p214 verysmooth)
    (treatment p214 colourfragments)
    (goalsize p214 large)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s6)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s11)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 cherry)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s7)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s1)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s6)
    (wood b8 mahogany)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s7)
    (wood b9 mahogany)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s7)
    (wood b10 mahogany)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s8)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s5)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s6)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s10)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 mahogany)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s8)
    (wood b16 mahogany)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s7)
    (wood b17 mahogany)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s4)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s8)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 oak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s9)
    (wood b22 oak)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s9)
    (wood b23 oak)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s10)
    (wood b24 oak)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s7)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s10)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s3)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s8)
    (wood b28 pine)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s7)
    (wood b29 pine)
    (surface-condition b29 smooth)
    (available b29)
    (boardsize b30 s8)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s10)
    (wood b31 pine)
    (surface-condition b31 smooth)
    (available b31)
    (boardsize b32 s9)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s9)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s9)
    (wood b34 pine)
    (surface-condition b34 smooth)
    (available b34)
    (boardsize b35 s8)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s7)
    (wood b36 pine)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s9)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s5)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s6)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s9)
    (wood b40 walnut)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s9)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s10)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s10)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s8)
    (wood b44 walnut)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s8)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s8)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s9)
    (wood b47 teak)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s9)
    (wood b48 teak)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s11)
    (wood b49 teak)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s6)
    (wood b50 teak)
    (surface-condition b50 smooth)
    (available b50)
    (boardsize b51 s9)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s7)
    (wood b52 teak)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s7)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s7)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s8)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s7)
    (wood b56 teak)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s9)
    (wood b57 teak)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s9)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s3)
    (wood b59 teak)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s9)
    (wood b60 beech)
    (surface-condition b60 smooth)
    (available b60)
    (boardsize b61 s9)
    (wood b61 beech)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s8)
    (wood b62 beech)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s7)
    (wood b63 beech)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s9)
    (wood b64 beech)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s6)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s3)
    (wood b66 beech)
    (surface-condition b66 rough)
    (available b66)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 blue)
      (treatment p1 glazed)
      (available p2)
      (colour p2 red)
      (wood p2 beech)
      (surface-condition p2 verysmooth)
      (available p3)
      (colour p3 mauve)
      (wood p3 cherry)
      (surface-condition p3 smooth)
      (available p4)
      (surface-condition p4 smooth)
      (treatment p4 varnished)
      (available p5)
      (wood p5 beech)
      (treatment p5 varnished)
      (available p6)
      (colour p6 blue)
      (wood p6 cherry)
      (available p7)
      (surface-condition p7 verysmooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 natural)
      (treatment p8 glazed)
      (available p9)
      (colour p9 mauve)
      (wood p9 oak)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 green)
      (wood p10 teak)
      (treatment p10 varnished)
      (available p11)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 red)
      (treatment p12 glazed)
      (available p13)
      (wood p13 oak)
      (treatment p13 varnished)
      (available p14)
      (colour p14 black)
      (wood p14 beech)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 natural)
      (wood p15 cherry)
      (available p16)
      (colour p16 mauve)
      (wood p16 oak)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 black)
      (wood p17 oak)
      (available p18)
      (colour p18 black)
      (surface-condition p18 verysmooth)
      (available p19)
      (colour p19 black)
      (surface-condition p19 smooth)
      (available p20)
      (wood p20 mahogany)
      (treatment p20 varnished)
      (available p21)
      (colour p21 mauve)
      (wood p21 beech)
      (surface-condition p21 smooth)
      (available p22)
      (colour p22 blue)
      (wood p22 pine)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 natural)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (wood p24 mahogany)
      (surface-condition p24 verysmooth)
      (available p25)
      (colour p25 mauve)
      (wood p25 walnut)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 green)
      (wood p26 teak)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 blue)
      (wood p27 oak)
      (available p28)
      (colour p28 black)
      (wood p28 mahogany)
      (treatment p28 glazed)
      (available p29)
      (colour p29 mauve)
      (wood p29 cherry)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 blue)
      (wood p30 beech)
      (surface-condition p30 smooth)
      (treatment p30 varnished)
      (available p31)
      (wood p31 oak)
      (treatment p31 glazed)
      (available p32)
      (colour p32 mauve)
      (wood p32 mahogany)
      (surface-condition p32 smooth)
      (available p33)
      (colour p33 red)
      (surface-condition p33 verysmooth)
      (available p34)
      (wood p34 teak)
      (surface-condition p34 smooth)
      (available p35)
      (colour p35 red)
      (wood p35 beech)
      (surface-condition p35 smooth)
      (available p36)
      (surface-condition p36 verysmooth)
      (treatment p36 glazed)
      (available p37)
      (wood p37 pine)
      (treatment p37 glazed)
      (available p38)
      (colour p38 mauve)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (wood p39 cherry)
      (surface-condition p39 verysmooth)
      (treatment p39 varnished)
      (available p40)
      (colour p40 red)
      (treatment p40 glazed)
      (available p41)
      (colour p41 green)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 white)
      (treatment p42 varnished)
      (available p43)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 green)
      (wood p44 oak)
      (available p45)
      (colour p45 white)
      (wood p45 teak)
      (available p46)
      (colour p46 white)
      (wood p46 mahogany)
      (available p47)
      (colour p47 mauve)
      (treatment p47 glazed)
      (available p48)
      (surface-condition p48 smooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 mauve)
      (wood p49 cherry)
      (surface-condition p49 verysmooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 blue)
      (wood p50 pine)
      (available p51)
      (wood p51 mahogany)
      (surface-condition p51 smooth)
      (treatment p51 varnished)
      (available p52)
      (colour p52 red)
      (wood p52 oak)
      (surface-condition p52 verysmooth)
      (treatment p52 glazed)
      (available p53)
      (wood p53 teak)
      (treatment p53 varnished)
      (available p54)
      (colour p54 white)
      (wood p54 mahogany)
      (available p55)
      (colour p55 white)
      (wood p55 teak)
      (available p56)
      (wood p56 teak)
      (surface-condition p56 verysmooth)
      (available p57)
      (colour p57 mauve)
      (wood p57 pine)
      (surface-condition p57 verysmooth)
      (available p58)
      (colour p58 black)
      (wood p58 walnut)
      (surface-condition p58 smooth)
      (treatment p58 glazed)
      (available p59)
      (wood p59 mahogany)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (surface-condition p60 verysmooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 green)
      (surface-condition p61 smooth)
      (available p62)
      (wood p62 cherry)
      (treatment p62 glazed)
      (available p63)
      (colour p63 blue)
      (treatment p63 glazed)
      (available p64)
      (wood p64 cherry)
      (surface-condition p64 smooth)
      (available p65)
      (surface-condition p65 smooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 red)
      (wood p66 beech)
      (available p67)
      (colour p67 green)
      (wood p67 oak)
      (available p68)
      (colour p68 red)
      (wood p68 walnut)
      (surface-condition p68 smooth)
      (treatment p68 varnished)
      (available p69)
      (wood p69 mahogany)
      (surface-condition p69 verysmooth)
      (available p70)
      (colour p70 red)
      (wood p70 mahogany)
      (available p71)
      (wood p71 teak)
      (surface-condition p71 smooth)
      (available p72)
      (wood p72 mahogany)
      (surface-condition p72 verysmooth)
      (available p73)
      (wood p73 mahogany)
      (treatment p73 glazed)
      (available p74)
      (colour p74 mauve)
      (wood p74 oak)
      (surface-condition p74 smooth)
      (available p75)
      (colour p75 blue)
      (wood p75 walnut)
      (available p76)
      (colour p76 red)
      (wood p76 walnut)
      (available p77)
      (wood p77 walnut)
      (surface-condition p77 smooth)
      (available p78)
      (colour p78 white)
      (surface-condition p78 smooth)
      (available p79)
      (colour p79 blue)
      (wood p79 teak)
      (surface-condition p79 smooth)
      (treatment p79 varnished)
      (available p80)
      (colour p80 white)
      (wood p80 pine)
      (surface-condition p80 smooth)
      (treatment p80 varnished)
      (available p81)
      (wood p81 teak)
      (surface-condition p81 verysmooth)
      (available p82)
      (colour p82 white)
      (wood p82 pine)
      (surface-condition p82 verysmooth)
      (treatment p82 glazed)
      (available p83)
      (wood p83 cherry)
      (surface-condition p83 verysmooth)
      (treatment p83 varnished)
      (available p84)
      (colour p84 natural)
      (wood p84 pine)
      (available p85)
      (colour p85 black)
      (surface-condition p85 verysmooth)
      (available p86)
      (wood p86 walnut)
      (treatment p86 varnished)
      (available p87)
      (colour p87 blue)
      (surface-condition p87 verysmooth)
      (available p88)
      (surface-condition p88 verysmooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 natural)
      (wood p89 oak)
      (available p90)
      (colour p90 natural)
      (wood p90 beech)
      (treatment p90 varnished)
      (available p91)
      (surface-condition p91 verysmooth)
      (treatment p91 glazed)
      (available p92)
      (colour p92 black)
      (surface-condition p92 verysmooth)
      (available p93)
      (colour p93 mauve)
      (treatment p93 glazed)
      (available p94)
      (colour p94 natural)
      (surface-condition p94 verysmooth)
      (available p95)
      (colour p95 green)
      (surface-condition p95 smooth)
      (available p96)
      (colour p96 black)
      (wood p96 beech)
      (surface-condition p96 smooth)
      (treatment p96 varnished)
      (available p97)
      (colour p97 black)
      (wood p97 mahogany)
      (surface-condition p97 verysmooth)
      (treatment p97 varnished)
      (available p98)
      (colour p98 green)
      (surface-condition p98 verysmooth)
      (available p99)
      (colour p99 natural)
      (treatment p99 varnished)
      (available p100)
      (colour p100 black)
      (treatment p100 varnished)
      (available p101)
      (wood p101 cherry)
      (treatment p101 glazed)
      (available p102)
      (colour p102 white)
      (treatment p102 glazed)
      (available p103)
      (colour p103 black)
      (surface-condition p103 verysmooth)
      (treatment p103 varnished)
      (available p104)
      (colour p104 black)
      (wood p104 walnut)
      (surface-condition p104 verysmooth)
      (available p105)
      (colour p105 white)
      (wood p105 cherry)
      (surface-condition p105 verysmooth)
      (treatment p105 varnished)
      (available p106)
      (wood p106 teak)
      (treatment p106 glazed)
      (available p107)
      (surface-condition p107 verysmooth)
      (treatment p107 varnished)
      (available p108)
      (colour p108 blue)
      (wood p108 pine)
      (surface-condition p108 verysmooth)
      (treatment p108 glazed)
      (available p109)
      (surface-condition p109 verysmooth)
      (treatment p109 glazed)
      (available p110)
      (surface-condition p110 verysmooth)
      (treatment p110 glazed)
      (available p111)
      (colour p111 natural)
      (wood p111 cherry)
      (available p112)
      (wood p112 mahogany)
      (treatment p112 glazed)
      (available p113)
      (wood p113 oak)
      (treatment p113 glazed)
      (available p114)
      (wood p114 pine)
      (treatment p114 varnished)
      (available p115)
      (surface-condition p115 smooth)
      (treatment p115 varnished)
      (available p116)
      (surface-condition p116 verysmooth)
      (treatment p116 varnished)
      (available p117)
      (wood p117 walnut)
      (surface-condition p117 smooth)
      (treatment p117 varnished)
      (available p118)
      (wood p118 beech)
      (surface-condition p118 verysmooth)
      (treatment p118 glazed)
      (available p119)
      (wood p119 cherry)
      (treatment p119 glazed)
      (available p120)
      (wood p120 oak)
      (treatment p120 glazed)
      (available p121)
      (colour p121 natural)
      (wood p121 mahogany)
      (surface-condition p121 verysmooth)
      (treatment p121 varnished)
      (available p122)
      (colour p122 natural)
      (wood p122 teak)
      (surface-condition p122 verysmooth)
      (treatment p122 varnished)
      (available p123)
      (colour p123 blue)
      (wood p123 teak)
      (surface-condition p123 verysmooth)
      (treatment p123 varnished)
      (available p124)
      (colour p124 blue)
      (wood p124 teak)
      (surface-condition p124 verysmooth)
      (treatment p124 glazed)
      (available p125)
      (wood p125 cherry)
      (surface-condition p125 verysmooth)
      (available p126)
      (colour p126 white)
      (wood p126 beech)
      (available p127)
      (wood p127 mahogany)
      (surface-condition p127 smooth)
      (available p128)
      (wood p128 oak)
      (treatment p128 glazed)
      (available p129)
      (colour p129 white)
      (wood p129 teak)
      (treatment p129 glazed)
      (available p130)
      (wood p130 walnut)
      (treatment p130 glazed)
      (available p131)
      (surface-condition p131 smooth)
      (treatment p131 glazed)
      (available p132)
      (colour p132 red)
      (wood p132 beech)
      (surface-condition p132 verysmooth)
      (treatment p132 glazed)
      (available p133)
      (colour p133 red)
      (wood p133 teak)
      (surface-condition p133 smooth)
      (treatment p133 varnished)
      (available p134)
      (wood p134 oak)
      (treatment p134 varnished)
      (available p135)
      (surface-condition p135 verysmooth)
      (treatment p135 glazed)
      (available p136)
      (colour p136 green)
      (wood p136 teak)
      (available p137)
      (wood p137 walnut)
      (treatment p137 varnished)
      (available p138)
      (colour p138 blue)
      (surface-condition p138 verysmooth)
      (treatment p138 varnished)
      (available p139)
      (colour p139 blue)
      (wood p139 cherry)
      (surface-condition p139 verysmooth)
      (treatment p139 glazed)
      (available p140)
      (wood p140 cherry)
      (surface-condition p140 verysmooth)
      (available p141)
      (wood p141 teak)
      (treatment p141 varnished)
      (available p142)
      (colour p142 natural)
      (surface-condition p142 verysmooth)
      (available p143)
      (colour p143 white)
      (surface-condition p143 smooth)
      (treatment p143 glazed)
      (available p144)
      (colour p144 red)
      (surface-condition p144 verysmooth)
      (available p145)
      (colour p145 mauve)
      (wood p145 pine)
      (available p146)
      (colour p146 green)
      (wood p146 oak)
      (surface-condition p146 verysmooth)
      (treatment p146 glazed)
      (available p147)
      (colour p147 blue)
      (wood p147 oak)
      (available p148)
      (colour p148 mauve)
      (wood p148 oak)
      (surface-condition p148 verysmooth)
      (treatment p148 glazed)
      (available p149)
      (colour p149 natural)
      (wood p149 pine)
      (surface-condition p149 verysmooth)
      (treatment p149 glazed)
      (available p150)
      (wood p150 mahogany)
      (treatment p150 glazed)
      (available p151)
      (wood p151 pine)
      (surface-condition p151 verysmooth)
      (treatment p151 glazed)
      (available p152)
      (wood p152 teak)
      (surface-condition p152 smooth)
      (treatment p152 glazed)
      (available p153)
      (colour p153 red)
      (treatment p153 varnished)
      (available p154)
      (colour p154 green)
      (wood p154 pine)
      (surface-condition p154 verysmooth)
      (treatment p154 glazed)
      (available p155)
      (colour p155 blue)
      (wood p155 walnut)
      (available p156)
      (colour p156 mauve)
      (wood p156 pine)
      (surface-condition p156 smooth)
      (available p157)
      (colour p157 natural)
      (wood p157 cherry)
      (surface-condition p157 smooth)
      (treatment p157 varnished)
      (available p158)
      (colour p158 red)
      (wood p158 mahogany)
      (surface-condition p158 verysmooth)
      (available p159)
      (colour p159 white)
      (treatment p159 varnished)
      (available p160)
      (colour p160 mauve)
      (wood p160 mahogany)
      (treatment p160 glazed)
      (available p161)
      (wood p161 walnut)
      (surface-condition p161 verysmooth)
      (treatment p161 varnished)
      (available p162)
      (colour p162 mauve)
      (wood p162 teak)
      (available p163)
      (surface-condition p163 smooth)
      (treatment p163 varnished)
      (available p164)
      (wood p164 beech)
      (treatment p164 glazed)
      (available p165)
      (wood p165 beech)
      (surface-condition p165 verysmooth)
      (available p166)
      (wood p166 teak)
      (surface-condition p166 smooth)
      (available p167)
      (colour p167 blue)
      (wood p167 mahogany)
      (surface-condition p167 smooth)
      (treatment p167 glazed)
      (available p168)
      (colour p168 black)
      (surface-condition p168 smooth)
      (treatment p168 varnished)
      (available p169)
      (colour p169 natural)
      (wood p169 beech)
      (surface-condition p169 smooth)
      (treatment p169 varnished)
      (available p170)
      (colour p170 natural)
      (wood p170 oak)
      (treatment p170 varnished)
      (available p171)
      (colour p171 blue)
      (wood p171 oak)
      (surface-condition p171 smooth)
      (treatment p171 varnished)
      (available p172)
      (wood p172 mahogany)
      (surface-condition p172 smooth)
      (available p173)
      (wood p173 walnut)
      (surface-condition p173 verysmooth)
      (available p174)
      (wood p174 beech)
      (surface-condition p174 smooth)
      (available p175)
      (colour p175 green)
      (wood p175 cherry)
      (surface-condition p175 smooth)
      (treatment p175 glazed)
      (available p176)
      (surface-condition p176 smooth)
      (treatment p176 varnished)
      (available p177)
      (colour p177 natural)
      (wood p177 mahogany)
      (available p178)
      (colour p178 mauve)
      (wood p178 oak)
      (available p179)
      (colour p179 red)
      (surface-condition p179 verysmooth)
      (treatment p179 varnished)
      (available p180)
      (colour p180 mauve)
      (wood p180 mahogany)
      (surface-condition p180 smooth)
      (treatment p180 glazed)
      (available p181)
      (colour p181 white)
      (surface-condition p181 smooth)
      (available p182)
      (colour p182 blue)
      (surface-condition p182 smooth)
      (treatment p182 glazed)
      (available p183)
      (wood p183 pine)
      (surface-condition p183 smooth)
      (treatment p183 varnished)
      (available p184)
      (colour p184 white)
      (wood p184 mahogany)
      (surface-condition p184 smooth)
      (treatment p184 varnished)
      (available p185)
      (wood p185 pine)
      (surface-condition p185 verysmooth)
      (treatment p185 varnished)
      (available p186)
      (wood p186 mahogany)
      (surface-condition p186 verysmooth)
      (available p187)
      (colour p187 red)
      (treatment p187 varnished)
      (available p188)
      (colour p188 red)
      (wood p188 walnut)
      (surface-condition p188 verysmooth)
      (treatment p188 varnished)
      (available p189)
      (colour p189 green)
      (surface-condition p189 smooth)
      (treatment p189 varnished)
      (available p190)
      (wood p190 pine)
      (treatment p190 varnished)
      (available p191)
      (colour p191 natural)
      (wood p191 beech)
      (surface-condition p191 verysmooth)
      (treatment p191 glazed)
      (available p192)
      (colour p192 red)
      (treatment p192 glazed)
      (available p193)
      (wood p193 cherry)
      (treatment p193 glazed)
      (available p194)
      (colour p194 natural)
      (wood p194 oak)
      (surface-condition p194 verysmooth)
      (available p195)
      (colour p195 black)
      (wood p195 beech)
      (surface-condition p195 smooth)
      (available p196)
      (colour p196 red)
      (wood p196 mahogany)
      (surface-condition p196 verysmooth)
      (treatment p196 varnished)
      (available p197)
      (colour p197 black)
      (wood p197 pine)
      (surface-condition p197 smooth)
      (treatment p197 glazed)
      (available p198)
      (wood p198 mahogany)
      (surface-condition p198 smooth)
      (available p199)
      (colour p199 white)
      (wood p199 oak)
      (surface-condition p199 smooth)
      (treatment p199 varnished)
      (available p200)
      (wood p200 pine)
      (treatment p200 glazed)
      (available p201)
      (colour p201 white)
      (surface-condition p201 smooth)
      (available p202)
      (colour p202 blue)
      (wood p202 oak)
      (surface-condition p202 smooth)
      (treatment p202 varnished)
      (available p203)
      (colour p203 natural)
      (wood p203 walnut)
      (treatment p203 varnished)
      (available p204)
      (colour p204 blue)
      (wood p204 teak)
      (available p205)
      (surface-condition p205 verysmooth)
      (treatment p205 varnished)
      (available p206)
      (colour p206 black)
      (wood p206 walnut)
      (surface-condition p206 smooth)
      (treatment p206 varnished)
      (available p207)
      (wood p207 mahogany)
      (treatment p207 varnished)
      (available p208)
      (wood p208 pine)
      (surface-condition p208 smooth)
      (available p209)
      (colour p209 white)
      (wood p209 mahogany)
      (surface-condition p209 smooth)
      (treatment p209 varnished)
      (available p210)
      (wood p210 cherry)
      (treatment p210 varnished)
      (available p211)
      (colour p211 mauve)
      (wood p211 teak)
      (surface-condition p211 smooth)
      (treatment p211 glazed)
      (available p212)
      (colour p212 natural)
      (surface-condition p212 smooth)
      (available p213)
      (surface-condition p213 smooth)
      (treatment p213 varnished)
      (available p214)
      (surface-condition p214 verysmooth)
      (treatment p214 glazed)
    )
  )
  
)