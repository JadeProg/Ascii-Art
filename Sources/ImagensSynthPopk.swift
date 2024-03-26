//
//  File.swift
//  
//
//  Created by User on 20/03/24.
//

import Foundation

func generateImageSynthPopk01(descricao: String) -> String {
    return
            """
        
        *Kiss*…….*Kiss*
        *Kiss*…..*Kiss*
        *Kiss*…*Kiss*
        *Kiss**Kiss*
        *Kiss*…*Kiss*
        *Kiss*…..*Kiss*
        *Kiss*…….*Kiss*
        *Kiss*………*Kiss *

        ……..*Kiss*
        ……..*Kiss*
        ……..*Kiss*
        ……..*Kiss*
        ……..*Kiss*
        ……..*Kiss*
        ……..*Kiss*
        ……..*Kiss*
        ……..*Kiss*

        ………*Kiss*
        …*Kiss*…*Kiss*
        .*Kiss*…….*Kiss*
        …*Kiss*……*Kiss *
        ……*Kiss*
        ………..*Kiss*
        *Kiss*……*Kiss*
        .*Kiss*…….*Kiss*
        …*Kiss*…*Kiss*
        ………*Kiss*

        ………*Kiss*
        …*Kiss*…*Kiss*
        .*Kiss*…….*Kiss*
        …*Kiss*……*Kiss *
        ……*Kiss*
        ………..*Kiss*
        *Kiss*……*Kiss*
        .*Kiss*…….*Kiss*
        …*Kiss*…*Kiss*
        ………*Kiss
        
        \(descricao) ¸¸♫·¯·♪¸♩·¯·♬¸¸
        """
    
}

func generateImageSynthPopk02(descricao: String) -> String {
    
    let desenho = """
        
            .__________________________.
            | .___________________. |==|
            | |      Apple ][     | |  |
            | |                   | |  |
            | |                   | |  |
            | |XXXXXXXXXXXXXXXXXXX| |  |
            | |                   | |  |
            | |                   | |  |
            | | ]                 | | ,|
            | !___________________! |(c|
            !_______________________!__!
            |    ___ -=      ___ -= | ,|
            | ---[_]---   ---[_]--- |(c|

            !_______________________!__!
           /                            \
          /  [][][][][][][][][][][][][]  \
         /  [][][][][][][][][][][][][][]  \
        (  [][][][][____________][][][][]  )
         \\ ----------------------------- /
          \\_____________________________/
        
        """

    return substituir(desenho: desenho, descricao: descricao, placeholder: "XXXXXXXXXXXXXXXXXXX")
    
}

func generateImageSynthPopk03(descricao: String) -> String {
    
    let desenho = """
        
         ,_______________________________________,
        /   HHH*                          *HHH   /.
        `---------------------------------------" :
        | +              XLII  90             + | :
        |             .____________.            | :
        |       .++.  |######\\ /##|  .++.      | :
        |       +  +  |######/  \\#|  +  +      | :
        |       '++'  '------------'  '++'      | :
        |                                       | :
        |XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX| :
        |                                       | :
        |      /'''''''''''''''''''''''''\\     I :
        |     /     o       0         o   \\    I :
        |+   / O                         O \\  +|,'
        `---------------------------------------
        
        """
   
    return substituir(desenho: desenho, descricao: descricao, placeholder: "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")

}

func generateImageSynthPopk04(descricao: String) -> String {
    
    let desenho = """
        
           |OFFo oON                  |
           | .----------------------. |
           | |  .----------------.  | |
           | |  |                |  | |
           | |))|                |  | |
           | |  |                |  | |
           | |  |XXXXXXXXXXXXXXXX|  | |
           | |  |                |  | |
           | |  |                |  | |
           | |  |                |  | |
           | |  '----------------'  | |
           | |__GAME BOY____________/ |
           |          ________        |
           |    .    (Nintendo)       |
           |  _| |_   ''''''''   .-.  |
           |-[_   _]-       .-. (   ) |
           |   |_|         (   ) '-'  |
           |    '           '-'   A   |
           |                 B        |
           |          ___   ___       |
           |         (___) (___)  ,., |
           |        select start ;:;: |
           |                    ,;:;' /
           |                   ,:;:'.'
           '-----------------------`
        
        """
    
    return substituir(desenho: desenho, descricao: descricao, placeholder: "XXXXXXXXXXXXXXXX")
    
}

func generateImageSynthPopk05(descricao: String) -> String {
    
    let desenho = """
       
                                         */*
                              *&&&&&&&&&&&&&&&&&&&&&&&,
                          &&&&&&&&.               .&&&&&&&&
                       &&&&&&                           &&&&&&
                    &&&&@.                                  &&&&&
                  &&&&&                                       &&&&&
                ,&&&@   @&&&&&&&&&&&&&&&&&&&&&&&&#              &&&&.
               &&&&   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&              &&&&
              &&&&    &&&&&&&&&&&&&&   &&&&&&&&&&&&&&              &&&&
             (&&&                     &&&&&&&&&&&&&&&&              &&&/
             &&&&                    &&&&&&&&&&&&&&&&&@             &&&&
             &&&                   %&&&&&&    .&&&&&&&&&             &&&
            *&&&                  &&&&&&&&      @&&&&&&&&            &&&
             &&&                 &&&&&&&&%        &&&&&&&&           &&&
             &&&&              &&&&&&              %&&&&&&&         &&&&
             (&&&             &&&&&                  &&&&&&&        &&&/
              &&&&           &&&&                      &&&&&&      &&&&
               &&&&                                     &&&&&%    &&&&
                ,&&&&                                     &&&   @&&&
                  &&&&&           XXXXXXXXXXXXXXXXX           &&&&&
                    &&&&&                                   &&&&&
                       &&&&&&                           %&&&&&
                          &&&&&&&&                 &&&&&&&&
                              ,&&&&&&&&&&&&&&&&&&&&&&&.
       
       """
    
    return substituir(desenho: desenho, descricao: descricao, placeholder: "XXXXXXXXXXXXXXXXX")
    
}

// FUNCCAO DE SUBSTITUICAO NO DESENHO
func substituir(desenho: String, descricao: String, placeholder: String) -> String {
    
    var descricao = descricao
    
    let diff = placeholder.count - descricao.count // 9
    
    if diff > 0 {
        // inserir espaços no inicio
        for i in (0...diff/2) {
            descricao.insert(" ", at: descricao.startIndex)
        }
        // inserir espaços no finm
        for i in (0...diff/2) {
            descricao.append(" ")
        }
        if diff.isMultiple(of: 2) == false {
            descricao.append(" ")
        }
    } else {
        // caso queira parar execução quand o limite for maior
        print("A descrição tem \(descricao.count) caracteres, que é mais do que cabe na ascii art. Execute novamente o programa e insira uma descrição de no máximo \(placeholder.count) caracteres para esse estilo.")
        exit(0)
    }
    
    return desenho.replacingOccurrences(of: placeholder, with: descricao)
    
}
