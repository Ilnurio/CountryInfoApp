//
//  ViewController.swift
//  CountryInfoApp
//
//  Created by Ilnur on 07.05.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    private let baseUrl:URL = URL(string: "https://restcountries.com/v3.1/")!
   // private let imageUrl: URL = URL(string: "https://restcountries.com/v3.1/all?fields=flags")!
    private let imageUrl: URL = URL(string: "https://flagcdn.com/w320/es.png")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchCountry()
    }
    
    private func fetchCountry() {
        URLSession.shared.dataTask(with: imageUrl) { [weak self] data, response, error in
            guard let data, let response else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            print(response)
            
            DispatchQueue.main.async {
                self?.imageView.image = UIImage(data: data)
            }
        }.resume()
    }
}

