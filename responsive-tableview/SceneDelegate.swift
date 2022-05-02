//
//  SceneDelegate.swift
//  responsive-tableview
//
//  Created by Connor Przybyla on 4/24/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.windowScene = windowScene
        let tableViewController = TableViewController(viewModel: ListViewModel(names: [
            "Aaren"
            ,
            "Aarika"
            ,
            "Abagael"
            ,
            "Abagail"
            ,
            "Abbe"
            ,
            "Abbey"
            ,
            "Abbi"
            ,
            "Abbie"
            ,
            "Abby"
            ,
            "Abbye"
            ,
            "Abigael"
            ,
            "Abigail"
            ,
            "Abigale"
            ,
            "Abra"
            ,
            "Ada"
            ,
            "Adah"
            ,
            "Adaline"
            ,
            "Adan"
            ,
            "Adara"
            ,
            "Adda"
            ,
            "Addi"
            ,
            "Addia"
            ,
            "Addie"
            ,
            "Addy"
            ,
            "Adel"
            ,
            "Adela"
            ,
            "Adelaida"
            ,
            "Adelaide"
            ,
            "Adele"
            ,
            "Adelheid"
            ,
            "Adelice"
            ,
            "Adelina"
            ,
            "Adelind"
            ,
            "Adeline"
            ,
            "Adella"
            ,
            "Adelle"
            ,
            "Adena"
            ,
            "Adey"
            ,
            "Adi"
            ,
            "Adiana"
            ,
            "Adina"
            ,
            "Adora"
            ,
            "Adore"
            ,
            "Adoree"
            ,
            "Adorne"
            ,
            "Adrea"
            ,
            "Adria"
            ,
            "Adriaens"
            ,
            "Adrian"
            ,
            "Adriana"
            ,
            "Adriane"
            ,
            "Adrianna"
            ,
            "Adrianne"
            ,
            "Adriena"
            ,
            "Adrienne"
            ,
            "Aeriel"
            ,
            "Aeriela"
            ,
            "Aeriell"
            ,
            "Afton"
            ,
            "Ag"
            ,
            "Agace"
            ,
            "Agata"
            ,
            "Agatha"
            ,
            "Agathe"
            ,
            "Aggi"
            ,
            "Aggie"
            ,
            "Aggy"
            ,
            "Agna"
            ,
            "Agnella"
            ,
            "Agnes"
            ,
            "Agnese"
            ,
            "Agnesse"
            ,
            "Agneta"
            ,
            "Agnola"
            ,
            "Agretha"
            ,
            "Aida"
            ,
            "Aidan"
            ,
            "Aigneis"
            ,
            "Aila"
            ,
            "Aile"
            ,
            "Ailee"
            ,
            "Aileen"
            ,
            "Ailene"
            ,
            "Ailey"
            ,
            "Aili"
            ,
            "Ailina"
            ,
            "Ailis"
            ,
            "Ailsun"
            ,
            "Ailyn"
            ,
            "Aime"
            ,
            "Aimee"
            ,
            "Aimil"
            ,
            "Aindrea"
            ,
            "Ainslee"
            ,
            "Ainsley"
            ,
            "Ainslie"
            ,
            "Ajay"
            ,
            "Alaine"
            ,
            "Alameda"
            ,
            "Alana"
            ,
            "Alanah"
            ,
            "Alane"
            ,
            "Alanna"
            ,
            "Alayne"
            ,
            "Alberta"
            ,
            "Albertina"
            ,
            "Albertine"
            ,
            "Albina"
            ,
            "Alecia"
            ,
            "Aleda"
            ,
            "Aleece"
            ,
            "Aleen"
            ,
            "Alejandra"
            ,
            "Alejandrina"
            ,
            "Alena"
            ,
            "Alene"
            ,
            "Alessandra"
            ,
            "Aleta"
            ,
            "Alethea"
            ,
            "Alex"
            ,
            "Alexa"
            ,
            "Alexandra"
            ,
            "Alexandrina"
            ,
            "Alexi"
            ,
            "Alexia"
            ,
            "Alexina"
            ,
            "Alexine"
            ,
            "Alexis"
            ,
            "Alfi"
            ,
            "Alfie"
            ,
            "Alfreda"
            ,
            "Alfy"
            ,
            "Ali"
            ,
            "Alia"
            ,
            "Alica"
            ,
            "Alice"
            ,
            "Alicea"
            ,
            "Alicia"
            ,
            "Alida"
            ,
            "Alidia"
            ,
            "Alie"
            ,
            "Alika"
            ,
            "Alikee"
            ,
            "Alina"
            ,
            "Aline"
            ,
            "Alis"
            ,
            "Alisa"
            ,
            "Alisha"
            ,
            "Alison"
            ,
            "Alissa"
            ,
            "Alisun"
            ,
            "Alix"
            ,
            "Aliza"
            ,
            "Alla"
            ,
            "Alleen"
            ,
            "Allegra"
            ,
            "Allene"
            ,
            "Alli"
            ,
            "Allianora"
            ,
            "Allie"
            ,
            "Allina"
            ,
            "Allis"
            ,
            "Allison"
            ,
            "Allissa"
            ,
            "Allix"
            ,
            "Allsun"
            ,
            "Allx"
            ,
            "Ally"
            ,
            "Allyce"
            ,
            "Allyn"
            ,
            "Allys"
            ,
            "Allyson"
            ,
            "Alma"
            ,
            "Almeda"
            ,
            "Almeria"
            ,
            "Almeta"
            ,
            "Almira"
            ,
            "Almire"
            ,
            "Aloise"
            ,
            "Aloisia"
            ,
            "Aloysia"
            ,
            "Alta"
            ,
            "Althea"
            ,
            "Alvera"
            ,
            "Alverta"
            ,
            "Alvina"
            ,
            "Alvinia"
            ,
            "Alvira"
            ,
            "Alyce"
            ,
            "Alyda"
            ,
            "Alys"
            ,
            "Alysa"
            ,
            "Alyse"
            ,
            "Alysia"
            ,
            "Alyson"
            ,
            "Alyss"
            ,
            "Alyssa"
            ,
            "Amabel"
            ,
            "Amabelle"
            ,
            "Amalea"
            ,
            "Amalee"
            ,
            "Amaleta"
            ,
            "Amalia"
            ,
            "Amalie"
            ,
            "Amalita"
            ,
            "Amalle"
            ,
            "Amanda"
            ,
            "Amandi"
            ,
            "Amandie"
            ,
            "Amandy"
            ,
            "Amara"
            ,
            "Amargo"
            ,
            "Amata"
            ,
            "Amber"
            ,
            "Amberly"
            ,
            "Ambur"
            ,
            "Ame"
            ,
            "Amelia"
            ,
            "Amelie"
            ,
            "Amelina"
            ,
            "Ameline"
            ,
            "Amelita"
            ,
            "Ami"
            ,
            "Amie"
            ,
            "Amii"
            ,
            "Amil"
            ,
            "Amitie"
            ,
            "Amity"
            ,
            "Ammamaria"
            ,
            "Amy"
            ,
            "Amye"
            ,
            "Ana"
            ,
            "Anabal"
            ,
            "Anabel"
            ,
            "Anabella"
            ,
            "Anabelle"
            ,
            "Analiese"
            ,
            "Analise"
            ,
            "Anallese"
            ,
            "Anallise"
            ,
            "Anastasia"
            ,
            "Anastasie"
            ,
            "Anastassia"
            ,
            "Anatola"
            ,
            "Andee"
            ,
            "Andeee"
            ,
            "Anderea"
            ,
            "Andi"
            ,
            "Andie"
            ,
            "Andra"
            ,
            "Andrea"
            ,
            "Andreana"
            ,
            "Andree"
            ,
            "Andrei"
            ,
            "Andria"
            ,
            "Andriana"
            ,
            "Andriette"
            ,
            "Andromache"
            ,
            "Andy"
            ,
            "Anestassia"
            ,
            "Anet"
            ,
            "Anett"
            ,
            "Anetta"
            ,
            "Anette"
            ,
            "Ange"
            ,
            "Angel"
            ,
            "Angela"
            ,
            "Angele"
            ,
            "Angelia"
            ,
            "Angelica"
            ,
            "Angelika"
            ,
            "Angelina"
            ,
            "Angeline"
            ,
            "Angelique"
            ,
            "Angelita"
            ,
            "Angelle"
            ,
            "Angie"
            ,
            "Angil"
            ,
            "Angy"
            ,
            "Ania"
            ,
            "Anica"
            ,
            "Anissa"
            ,
            "Anita"
            ,
            "Anitra"
            ,
            "Anjanette"
            ,
            "Anjela"
            ,
            "Ann"
            ,
            "Ann-Marie"
            ,
            "Anna"
            ,
            "Anna-Diana"
            ,
            "Anna-Diane"
            ,
            "Anna-Maria"
            ,
            "Annabal"
            ,
            "Annabel"
            ,
            "Annabela"
            ,
            "Annabell"
            ,
            "Annabella"
            ,
            "Annabelle"
            ,
            "Annadiana"
            ,
            "Annadiane"
            ,
            "Annalee"
            ,
            "Annaliese"
            ,
            "Annalise"
            ,
            "Annamaria"
            ,
            "Annamarie"
            ,
            "Anne"
            ,
            "Anne-Corinne"
            ,
            "Anne-Marie"]))
        window?.rootViewController = UINavigationController(rootViewController: tableViewController)
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
}
