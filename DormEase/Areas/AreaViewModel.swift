//
//  AreaViewModel.swift
//  DormEase
//
//  Created by Beniamino Gentile on 20/10/23.
//

import Foundation

class AreaViewModel: ObservableObject {
    
    var areas = [
        
        Area(areaName: "Vomero", areaImage: "Suor_Orsola_", areaDescription: "Suor Orsola Benincasa University - Department of Legal Sciences\nAddress: Corso Vittorio Emanuele, 334, 80135 Naples NA\n\nEssential Services:\n- Police - Commissariat\n\nTransport:\n- Funicular stop: Corso Vittorio Emanuele\n\nAttractions:\n- Cloisters of San Martino\n- Castel Sant'Elmo\n- Neapolitan Twentieth Century Museum\n- Mural Diego Armando Maradona", personalityTypes: ["ENTJ"]),
        
        Area(areaName: "Centro Storico", areaImage: "accademia_belle_arti", areaDescription: "Academy of Fine Arts\nAddress: Via Santa Maria di Costantinopoli, 107, 80138 Naples NA\n\nEssential Services:\n- Luigi Vanvitelli University Hospital\n- Pediatric Clinic\n\nTransport:\n- Line 1 metro stop: Museum\n\nAttractions:\n- Bellini Theater in Naples\n- Prince of Naples Gallery\n- LAPIS Museum - Naples Water Museum\n- National Archaeological Museum of Naples", personalityTypes: ["ENTP","INFJ"]),
        
        Area(areaName: "San Giovanni - Barra", areaImage: "San_giovanni_-_barra", areaDescription: "University of Naples Federico II - Polytechnic and Basic Sciences School - Naples East Complex\nAddress: Corso Nicolangelo Protopisani, 70, 80146 Naples ΝΑ\n\nEssential Services:\n- Municipality of Naples (Town Hall)\n- UniCredit\n- Post Office - Poste Italiane\n- Decò Maxistore\n\nTransport:\n- Line 2 metro stop: San Giovanni - Barra\n- Circumvesuviana stop: S. Giovanni a Teduccio\n\nAttractions:\n- Church Crowned Mother of Consolation\n- Madonna of the Christopher Columbus arch", personalityTypes: ["INTP"]),
        
        Area(areaName: "Santa Lucia", areaImage: "Partenope", areaDescription: "University of Naples Parthenope\nAddress: Via Ammiraglio Ferdinando Acton, 38, 80133 Naples NA\n\nEssential Services:\n- Financial Police\n- Medical assistance\n- Regional Development Bank\n\nTransport:\n- Line 1 metro stop: Municipio\n\nAttractions:\n- Castel Nuovo\n- San Carlo Theatre\n- Molosiglio Gardens", personalityTypes: ["INTJ","ENFP"]),
        
        Area(areaName: "Stella (Rione Sanità)", areaImage: "Veterinaria", areaDescription: "University of Naples Federico Il - Department of Veterinary Medicine and Animal Production\nAddress: Via Federico Delpino, 1, 80137 Naples NA\n\nEssential Services:\n- QuiPoste Napoli Stella\n\nTransport:\n- Line 2 metro stop: Naples Piazza Cavour\n- Line 1 metro stop: Museum\n\nAttractions:\n- Jago Museum\n- Naples Cathedral\n- Spaccanapoli\n- Museum of Contemporary Art - Mother Museum", personalityTypes: ["ENFJ","INFP","ESFJ"]),
        
        Area(areaName: "Porto", areaImage: "Sede_principale_federicoII", areaDescription: "University of Naples Federico II\nAddress: Corso Umberto I, 40, 80138 Naples NA\n\nEssential Services:\n- Intesa Sanpaolo S.p.A\n- UniNa International Relations Office\n\nTransport:\n- Line 1 metro stop: University\n\nAttractions:\n- Royal Mineralogical Museum\n- Basilica of San Giovanni Maggiore", personalityTypes: ["ISTJ","ISFP"]),
        
        Area(areaName: "Fuorigrotta", areaImage: "Piazzale_tecchio", areaDescription: "Building of the Faculty of Engineering\nAddress: Piazzale Vincenzo Tecchio, 80, 80125 Naples NA\n\nEssential Services:\n- ANAS - Campania Territorial Structure\n- Naples Municipal Police - Judicial Deposit\n- Intesa Sanpaolo S.p.A\n- Naples San Paolo police station\n\nTransport:\n- Line 2 metro stops: Naples Campi Flegrei\n- Cuman stop: Exhibition - Stadium - Maradona\n\nAttractions:\n- Diego Armando Maradona Stadium\n- Teatro Il Piccolo\n- Mostra d'Oltremare\n- Edenlandia", personalityTypes: ["ISFJ","ESFP","ESTJ"]),
        
        Area(areaName: "Santa Croce", areaImage: "medicina", areaDescription: "School of Medicine and Surgery - AOU Federico II\nAddress: Via Sergio Pansini, 5, 80131 Naples NA\n\nEssential Services:\n- Intesa Sanpaolo S.p.A\n- Federico Il University Hospital\n- AORN Antonio Cardarelli\n- State Police Commissariat Arenella\n\nTransport:\n- Line 1 metro stop: Policlinico", personalityTypes: ["ESTP","ISTP"]),
    ]
    
    @Published private(set) var filteredAreas: [Area] = []
    
    func filterAreasByPersonalityType(personalityType: String){
        filteredAreas = areas.filter { $0.personalityTypes.contains(personalityType) }
    }
    
}
