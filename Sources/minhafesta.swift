// The Swift Programming Language
// https://docs.swift.org/swift-book
//
// Swift Argument Parser
// https://swiftpackageindex.com/apple/swift-argument-parser/documentation

// Essa primeira parte é a biblioteca, será onde você precisa importar comandos para usá-los no seu código
import Foundation
import ArgumentParser

//......................................................................................

//Essa parte eu considero como o cérebro do código, ou seja, é onde você irá criar várias funcções e comandos para chamá-las no run e executá-las de fato.

@main
struct myparty: ParsableCommand {
    
    @Option(help: "O gênero musical mais predominante na festa escolha entre: 'hyperfunk', 'house', 'dark', 'synth-pop', 'tribal'")
    var style: String?
    
    @Option(help: "Coloque aqui o título da sua festa entre aspas")
    var titulo: String?
    
    @Option(help: "A data da sua festa")
    var data: String?
    
    @Option(help: "O horário da sua festa entre aspas")
    var horario: String?
    
    @Option(help: "O local da festa")
    var local: String?
    
    @Option(help: "O Dj ")
    var dj: String?
    
    @Option(help: "Descrição da festa")
    var descricao: String?
    
    @Flag(help: "Mostra o processo de criação do seu convite")
    var verbose = false
    
    static var configuration = CommandConfiguration(
        abstract: "Minha Festa",
        discussion: welcome()
    )
    
    //    func verbosePrint(_ text: String) {
    //            if verbose == true {
    //                print(text)
    //                sleep(1)
    //            }
    //        }
    
    //......................................................................................................
    //Nessa função criamos uma interação generalista entre as perguntas e respostas que o usuário dará, que serão apresentadas na tela.
    //interation é o nome que eu criei para a função e dentro dela onde está entre parêntese() eu adicioneite dois argumentos, "questao" que serão as questões que aparecerão para o usuário e "resposta" que será o que o usuário escreverá.
    //inout significa que o que o usuário escrever poderá ser modificado, ou seja, um valor qualquer que está sendo armazenado dentro da função poderá ser substituido por um valor que o usuário digitar.
    //Void significa que não possui valor dentro daquela variável, que está vazia.
    func interation(questao: String, resposta: inout String?) {
        print(questao)
        resposta = readLine() ?? ""
    }
    //......................................................................................................
    
    //Nessa função foi criado um gerador de imagens que conterá dentro dele a descrição da festa, ou seja, eu poderei fazer uma breve descrição que será contida na imagem exibida.
    //Array é usado para armazenar vários valores em uma única variável, ou seja, será usada para armazenar  as imagens escolhidas para cada tipo de estilo de música.
    //random serve para embaralhar os valores, ou seja, embaralhar as imagens.
    func generationImage(descricao: String, styles: String) {
        let imagesArray = generetionArrayImagens(descricao: descricao, estilo: styles) // trocar "1" por styles
        let randomNumber = Int.random(in: 0...(imagesArray.count - 1))
        let randomImage = imagesArray[randomNumber]
        let lines = randomImage.components(separatedBy: "\n")
        let delayTime = 0.1
        Task {
            for line in lines {
                print(line)
                try? await Task.sleep(for: .seconds(delayTime))
            }
        }
        RunLoop.main.run(until: Date.now.advanced(by: (Double(lines.count) + 1.0) * delayTime))
    }
    //......................................................................................................
    
    func generationstyle(titulo: String) -> String {
        let imagesArray = generetionArrayStyle(titulo: titulo)
        let randomNumber = Int.random(in: 0...(imagesArray.count - 1))
        return imagesArray[randomNumber]
    }
    
    func generationBody(dj: String, data: String, horario: String, local: String) -> String {
        let imagesArray = generationImagensBody(dj: dj, data: data, horario: horario, local: local)
        let randomNumber = Int.random(in: 0...(imagesArray.count - 1))
        return imagesArray[randomNumber]
    }
    
    //while é usado para criar looops que contem um bloco de código a er repetido enquanto a condição for verdadeira.
    func generationEstilos(estilo: inout String?) {
        let menu = """
1 - hyperfunk
2 - house
3 - dark
4 - synth-pop
5 - tribal
"""
        var resposta: String = ""
        while(true){
            print(menu)
            resposta = readLine() ?? ""
            
            if resposta == "1" || resposta == "2" || resposta == "3" || resposta == "4" || resposta == "5" {
                break
            } else {
                print("Escolha uma opção válida")
            }
        }
        estilo = resposta
        
    }
    
    //......................................................................................................
    
    //Essa parte será onde o código irá ser executado, ou seja, você chamará as funções criadas acima e as fará rodar.
    //O & serve para ter acesso ao local da memória onde a variável foi guardada
    //. OBS: É obrigatório usar um & sempre que for colocado "inout" do lado da tipagem da variável.
    mutating func run() throws {
        
        print(welcome())
        
        if titulo == nil {
            interation(questao: "Qual o nome da festa?", resposta: &titulo)
            shell("clear")
        }
        
        guard let titulo else { return } // unwrapp
        generationstyle(titulo: titulo) //estou chamndo a função titulo.
        
        if dj == nil {
            interation(questao: "Qual o nome do dj?", resposta: &dj)
            shell("clear")
        }
        
        guard let dj else { return } // unwrapp
        
        if data == nil {
            interation(questao: "Qual é a data da festa?", resposta: &data)
            shell("clear")
        }
        guard let data else { return }
        
        if horario == nil {
            interation(questao: "Qual o horário da festa?", resposta: &horario)
            shell("clear")
        }
        guard let horario else { return }
        
        if local == nil {
            interation(questao: "Qual o local da festa?", resposta: &local)
            shell("clear")
        }
        guard let local else { return }
        
        if style == nil {
            generationEstilos(estilo: &style)
            shell("clear")
        }
        guard let style else { return }
        
        if descricao == nil {
            interation(questao: "Faça uma descrição da festa", resposta: &descricao)
            shell("clear")
        }
        guard let descricao else { return }
        
        print("\n")
        print("Sua Festa é")
        print("\n")
        print(generationstyle(titulo: titulo))
        print(generationBody(dj: dj, data: data, horario: horario, local: local))
        
        generationImage(descricao: descricao, styles: style)//estou chamndo a função image.
        
        //        verbosePrint("pegando seu titulo")C
        //        verbosePrint("pegando o horário")
        //        verbosePrint("pegando o estilo")
        //
        //        verbosePrint("gerando o seu convite...")
        //
        //        print("seu convite:")
        //        print("⚝⚝⚝⚝ \(titulo) ⚝⚝⚝⚝")
        //        print("não perca a maior festa de hiperfunk às \(horario).")
        
        //        if style == "hiperfunk" {
        //            print(
        //            #"""
        //               --aasc art--
        //            """#
        //            )
        //            print("não perca a maior festa de hiperfunk às \(horario).")
        //
        //        }
        //        if style == "house" {
        //            print(
        //            #"""
        //                --aasc art--
        //            """#
        //            )
        //            print(titulo)
        //            print("não perca a maior festa de house às \(horario).")
        //        }
        //        else {
        //            print(titulo)
        //            print("não perca a maior festa de hoje às \(horario).")
        //        }
        //        func gerarAsciiArt(titulo: String) {
        //            let asciiArt: [String: String] = [
        //                "A": #"  ____   "#,
        //                "B": #"  ____  "#,
        //                "C": #"   ____"#,
        //                "D": #"  ____  "#,
        //                "E": #"  ____ "#,
        //                "F": #"  ____ "#,
        //                "G": #"   ____  "#,
        //                "H": #"  ____  "#,
        //                "I": #"   __   "#,
        //                "J": #"     __"#,
        //                // Adicione mais letras conforme necessário
        //
        //            ]
        //
        //            for char in titulo.uppercased() {
        //                if let art = asciiArt[String(char)] {
        //                    print(art)
        //                } else {
        //                    print("Essa arte não existe no nosso banco de dados: \(char)")
        //                }
        //            }
        //        }
        //        Usando a função para gerar arte ASCII com base em um título
        //        gerarAsciiArt(titulo: "Hello")
        
    }
}

/// TODO: colocar funcao shell aqui
@discardableResult
func shell(_ command: String) -> String {
    let task = Process()
    let pipe = Pipe()

    task.standardOutput = pipe
    task.arguments = ["-c", command]
    task.launchPath = "/bin/zsh"
    task.launch()

    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: .utf8)!

    print(output)
    return output
}
/// chamar clear: `shell("clear")`


