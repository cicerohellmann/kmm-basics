//
//  user.swift
//  ios
//
//  Created by Cicero Hellmann on 3/10/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import Foundation

struct User: Identifiable, Codable {
    let id: UUID
    var isLogged: Bool

    init(id: UUID = UUID(), isLogged: Bool = false) {
        self.id = id
        self.isLogged = isLogged
    }
}

extension User {
    struct Data {
        var isLogged: Bool
    }

    var data: Data {
        return Data(isLogged: isLogged)
    }

    mutating func update(from data: Data) {
        isLogged = data.isLogged
    }
}

class UserData: ObservableObject {
    private static var documentsFolder: URL {
        do {
            return try FileManager.default.url(for: .documentDirectory,
                                               in: .userDomainMask,
                                               appropriateFor: nil,
                                               create: false)
        } catch {
            fatalError("Can't find documents directory.")
        }
    }
    
    private static var fileURL: URL {
        return documentsFolder.appendingPathComponent("user")
    }
    
    @Published var user: User = User()
    
    func save() {
        DispatchQueue.global(qos: .background).async { [weak self] in
            guard let user = self?.user else { fatalError("Self out of scope") }
            guard let data = try? JSONEncoder().encode(user) else { fatalError("Error encoding data") }
            do {
                let outfile = Self.fileURL
                try data.write(to: outfile)
            } catch {
                fatalError("Can't write to file")
            }
        }
    }
    func load() {
        DispatchQueue.global(qos: .background).async { [weak self] in
            guard let data = try? Data(contentsOf: Self.fileURL) else {
                return
            }
            guard let user = try? JSONDecoder().decode(User.self, from: data) else {
                return
            }
            DispatchQueue.main.async {
                self?.user = user
            }
        }
    }
}
