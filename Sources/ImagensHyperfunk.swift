//
//  File.swift
//  
//
//  Created by User on 20/03/24.
//

import Foundation

func generateImageHyperfunk01(descricao: String) -> String {
    
    let desenho = """

                _.._
         __.--"" __ ""--.__
       .'//   .-"  "-.   \\`,
      : :'  .'.  :;  ,`.  `; ;
     /; ;  |  T. $$ ,P  |  : :
    /: :  ;    T.:;,P    :  ; ;
    )| | :      `  '      ; | |
    `j | :.--------------.: | |
     ; ; |                | : :
     ; ; |                | : :
     | | |XXXXXXXXXXXXXXXX| | |
     | | |                | | |
     : : |                | ; ;
     : : :________________: ; ;
      ; ;__    _...._    __: :
      | ;  '-.| ,--, |,-'  : |
      | '._   | ;  : |   _.' |
      :  __`-. `.'',' .-'__  ;
       ;`.__> `.J__L.' <__.':
       ;.--._   .--.   _.--,:
       |`.__.' `.__.' `.__.'|
       |.--._   .--.   _.--,|
       |`.__.' `.__.' `.__.'|
       |.--._   .--.   _.--,|
       ;`.__.' `.__.' `.__.':
      : .--._   .--.   _.--, ;
      ; `.__.' `.__.' `.__.' :
      ;                      :
      '--..__          __..--'
             ''''''''''
            
"""
    
    return substituir(desenho: desenho, descricao: descricao, placeholder: "XXXXXXXXXXXXXXXX")
    
}
func generateImageHyperfunk02(descricao: String) -> String {
    
    let desenho = """

                                    o
                                   $''$o
                                  $"  $$
                                   $$$$
                                   o '$o
                                  o'  '$
             oo'$$$'  oo$'$ooo   o$    '$    ooo'$oo  $$$'o
o o o o    oo'  o'      'o    $$o$'     o o$''  o$      '$  'oo   o o o o
'$o   ''$$$'   $$         $      '   o   ''    o'         $   'o$$'    o$$
  ''o       o  $          $'       $$$$$       o          $  ooo     o''
     'o   $$$$o $o       o$        $$$$$'       $o        ' $$$$   o'
      ''o $$$$o  oo o  o$'         $$$$$'        'o o o o'  '$$$  $
        '' '$'     '''''            ''$'            '''      ''' '
         'oooooooooooooooooooooooooooooooooooooooooooooooooooooo$
          '$$$$'$$$$' $$$$$$$'$$$$$$ ' '$$$$$'$$$$$$'  $$$''$$$$
           $$$oo$$$$   $$$$$$o$$$$$$o' $$$$$$$$$$$$$$ o$$$$o$$$'
           $'''''''''''''''''''''''''''''''''''''''''''''''''''$
           $'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'$
            
"""
    
    return substituir(desenho: desenho, descricao: descricao, placeholder: "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
    
}

func generateImageHyperfunk03(descricao: String) -> String {
    return  """

                                         ,d''7b.
                                           ,'    ,d^b.
                            __,d'''''''b..d.    d'
              ,d''''-.  ,d'''              `"b.dP
            dP' ,___  `7b.                     `b
          `'788P'  `'.   '                       `b
          ,d" `b      `'                          `7.
    `P''''7.   8)                                   7.
     `.    8  ,P               ,---.                 ''''b.
      8.  d' ,P             ,d"   ,88b.         "b       `8
     d' `'  ,P             ''    ,P   `7b        `b     ,dP
    d'      8                    d       `b.      d8888888888b.
   ,'      d'                   ,8.     8   78''''''788888888' `'b.
   8b _   8P                 ,P'   `'''oo.,d"          ''788'     `7.
 .-''''8 d8'            ,-''7P                       .    `7.      ,8.
`b     8 88              ,d'8   d8b.                 8b    `b      d `.
  `b___8 88             '  ,8  d8888888b.           ; `b    8     ,P  8.
   8     88                8  d8'7P''8''''b..      ,8  `b  ,8'''''8'  88
   8     `b ,d''           7  8  8   8   ,8. 7P--,dP   ,8"'     ,8' _,d8.
   7.     8d'                 8 ,db.P''bd' `7P ,d'''''''''''''''''''    8
   `b     d'                  8P'  8   88  ,P''                         8
    7. _,d'                   7b  ,d88888"'                            d'
    ,P' '8                     8888888''                               8
   ,P   88                     `888P'                                  8
  ,8_mGk_8                       ''                                   d'
        "8                                                    ,'     d'
         `b                                                  d8b..d''
          `b                                              ,dP'
           `7.                           ______________,d''
             `7b.                     ,d''
                `7b..             _,d''    \(descricao)
                     '''--....-''''         ╭∩╮(-_-)╭∩╮
            
"""
}

func generateImageHyperfunk04(descricao: String) -> String {
    
    let desenho = """

            .n                   .                 .                  n.
      .   .dP                  dP                   9b                 9b.    .
     4    qXb         .       d   XXXXXXXXXXXXXXXXX   Xb       .        dXp     t
    dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb
    9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP
     9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP
      `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'
        `9XXXXXXXXXXXP' `9XX'   DIE    `98v8P'  HUMAN   `XXP' `9XXXXXXXXXXXP'
            ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~
                            )b.  .dbo.dP'`v'`9b.odb.  .dX(
                          ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.
                         dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb
                        dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb
                        9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP
                         `'      9XXXXXX(   )XXXXXXP      `'
                                  XXXX X.`v'.X XXXX
                                  XP^X'`b   d'`X^XX
                                  X. 9  `   '  P )X
                                  `b  `       '  d'
                                   `             '

"""
    
    return substituir(desenho: desenho, descricao: descricao, placeholder: "XXXXXXXXXXXXXXXXX")

}

func generateImageHyperfunk05(descricao: String) -> String {
    
    let desenho = """

                .o$$RADIUS###############################################################o.
                ########################XX///X#############################################
                #######################XX///////X##########################################
                #####################"#P-------Y#"#############XXXXXXXXXXXXXXXXX###########
                ####################( #"^##P"##.# )########################################
                #####################.#b.  .b .d#.#########################################
                #######################"b.---.d##.:%0######################################
                #####################"  `#m.m#'....::%0####################################
                ##################P"  .. |'''|   ....::%0##################################
                ##############P"" . .... `. ,'      ..:.::%0###############################
                #############.  . ....::  |.|         ....:::%0############################
                #############b .. .:.:::  |.|  . .:.     ...::::%0#########################
                ##########"  `#:.::::::   .|  . :.:%%%..   ....::::%0######################
                ########"" .md##::::%#:: :.| ....:.::%%#o.  ....:.:::%0####################
                ########mm#######::%##%. ..| ..:.:.::%%###o.  .....::::####################
                #####P""    ""^Y#######m.. |  . :.:.%:%#####o.  ..mm^^0####################
                ###(     "^"     )##########mm.. :.:.:%#######o..#P     `^#################
                #####mmm.....mmm################################## m  m . )################
                ##################################################m##.m.b.#################
                #mm...""^^##################################0P''''          '''^Y##########
                ########mmmm...''^^########################(         "^"         )#########
                #################mmmm....""^^###############0mmm...       ...mmm0##########
                ###########################mmmm....''''^^##################################
                ######################################mmmmm.....''''#######################
                '^#######################################################################^'
            
"""
    
    return substituir(desenho: desenho, descricao: descricao, placeholder: "XXXXXXXXXXXXXXXXX")

}
