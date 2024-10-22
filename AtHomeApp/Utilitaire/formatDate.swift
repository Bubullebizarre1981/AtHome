//
//  formatDate.swift
//  AtHomeApp
//
//  Created by Apprenant 166 on 21/10/2024.
//

import Foundation

func formatDate(_ date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .short
    return dateFormatter.string(from: date)
}
