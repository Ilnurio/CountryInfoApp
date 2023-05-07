//
//  ViewController.swift
//  CountryInfoApp
//
//  Created by Ilnur on 07.05.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var codeLabel: UILabel!
    @IBOutlet var emojiLabel: UILabel!
    
    private let baseUrl = URL(string: "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/index.json")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchCountry()
    }
    
    private func fetchCountry() {
        URLSession.shared.dataTask(with: baseUrl) { data, _, error in
            guard let data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let country = try decoder.decode([Country].self, from: data)
                print(country)
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}

