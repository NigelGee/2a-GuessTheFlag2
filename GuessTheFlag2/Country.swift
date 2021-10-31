//
//  County.swift
//  GuessTheFlag2
//
//  Created by Nigel Gee on 30/10/2021.
//

import Foundation

struct Country: Hashable {
    let name: String
    let flag: String

    static var countries = Set([
        Country(name: "Anguilla", flag: "🇦🇮"),
        Country(name: "Australia", flag: "🇦🇺"),
        Country(name: "Austria", flag: "🇦🇹"),
        Country(name: "Belgium", flag: "🇧🇪"),
        Country(name: "Brazil", flag: "🇧🇷"),
        Country(name: "Bulgaria", flag: "🇧🇬"),
        Country(name: "Canada", flag: "🇨🇦"),
        Country(name: "China", flag: "🇨🇳"),
        Country(name: "Columbia", flag: "🇨🇴"),
        Country(name: "Cuba", flag: "🇨🇺"),
        Country(name: "Czech Republic", flag: "🇨🇿"),
        Country(name: "Egypt", flag: "🇪🇬"),
        Country(name: "France", flag: "🇫🇷"),
        Country(name: "Germany", flag: "🇩🇪"),
        Country(name: "Greece", flag: "🇬🇷"),
        Country(name: "Hong Kong", flag: "🇭🇰"),
        Country(name: "Hungary", flag: "🇭🇺"),
        Country(name: "India", flag: "🇮🇳"),
        Country(name: "Indonesia", flag: "🇮🇩"),
        Country(name: "Ireland", flag: "🇮🇪"),
        Country(name: "Israel", flag: "🇮🇱"),
        Country(name: "Italy", flag: "🇮🇹"),
        Country(name: "Japan", flag: "🇯🇵"),
        Country(name: "Latvia", flag: "🇱🇻"),
        Country(name: "Lithuania", flag: "🇱🇹"),
        Country(name: "Malaysia", flag: "🇲🇾"),
        Country(name: "Mexico", flag: "🇲🇽"),
        Country(name: "Morocco", flag: "🇲🇦"),
        Country(name: "Netherlands", flag: "🇳🇱"),
        Country(name: "New Zealand", flag: "🇳🇿"),
        Country(name: "Nigeria", flag: "🇳🇬"),
        Country(name: "Norway", flag: "🇳🇴"),
        Country(name: "Philippines", flag: "🇵🇭"),
        Country(name: "Poland", flag: "🇵🇱"),
        Country(name: "Portugal", flag: "🇵🇹"),
        Country(name: "Romania", flag: "🇷🇴"),
        Country(name: "Russia", flag: "🇷🇺"),
        Country(name: "Saudi Arabia", flag: "🇸🇦"),
        Country(name: "Serbia", flag: "🇷🇸"),
        Country(name: "Singapore", flag: "🇸🇬"),
        Country(name: "Slovakia", flag: "🇸🇰"),
        Country(name: "Slovenia", flag: "🇸🇮"),
        Country(name: "South Africa", flag: "🇿🇦"),
        Country(name: "South Korea", flag: "🇰🇷"),
        Country(name: "Sweden", flag: "🇸🇪"),
        Country(name: "Switzerland", flag: "🇨🇭"),
        Country(name: "Taiwan", flag: "🇹🇼"),
        Country(name: "Thailand", flag: "🇹🇭"),
        Country(name: "Turkey", flag: "🇹🇷"),
        Country(name: "Ukraine", flag: "🇺🇦"),
        Country(name: "United Arab Emirates", flag: "🇦🇪"),
        Country(name: "United Kingdom", flag: "🇬🇧"),
        Country(name: "United States", flag: "🇺🇸"),
        Country(name: "Venezuela", flag: "🇻🇨"),
        Country(name: "Scotland", flag: "🏴󠁧󠁢󠁳󠁣󠁴󠁿"),
        Country(name: "England", flag: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        Country(name: "Micronesia", flag: "🇫🇲"),
        Country(name: "Seychelles", flag: "🇸🇨"),
        Country(name: "Denmark", flag: "🇩🇰"),
        Country(name: "Myanmar", flag: "🇲🇲"),
        Country(name: "Côte d’Ivoire", flag: "🇨🇮"),
        Country(name: "Pitcairn", flag: "🇵🇳"),
        Country(name: "Montenegro", flag: "🇲🇪"),
        Country(name: "Aruba", flag: "🇦🇼"),
        Country(name: "Nepal", flag: "🇳🇵"),
        Country(name: "Kosovo", flag: "🇽🇰"),
        Country(name: "Saint Pierre & Miquelon", flag: "🇵🇲"),
        Country(name: "Benin", flag: "🇧🇯"),
        Country(name: "Liechtenstein", flag: "🇱🇮"),
        Country(name: "Cape Verde", flag: "🇨🇻"),
        Country(name: "Pakistan", flag: "🇵🇰"),
        Country(name: "Gabon", flag: "🇬🇦"),
        Country(name: "North Macedonia", flag: "🇲🇰"),
        Country(name: "Iran", flag: "🇮🇷"),
        Country(name: "South Korea", flag: "🇰🇷"),
        Country(name: "Mauritania", flag: "🇲🇷"),
        Country(name: "Spain", flag: "🇪🇸"),
        Country(name: "Puerto Rico", flag: "🇵🇷"),
        Country(name: "Wales", flag: "🏴󠁧󠁢󠁷󠁬󠁳󠁿"),
        Country(name: "Gambia", flag: "🇬🇲"),
        Country(name: "Sudan", flag: "🇸🇩"),
        Country(name: "Kazakhstan", flag: "🇰🇿"),
        Country(name: "Finland", flag: "🇫🇮"),
        Country(name: "Bhutan", flag: "🇧🇹"),
        Country(name: "South Georgia & the South Sandwich Islands", flag: "🇬🇸"),
        Country(name: "Lithuania", flag: "🇱🇹"),
        Country(name: "Liberia", flag: "🇱🇷"),
        Country(name: "Jersey", flag: "🇯🇪"),
        Country(name: "European Union", flag: "🇪🇺"),
        Country(name: "French Southern Territories", flag: "🇹🇫"),
        Country(name: "British Indian Ocean Territory", flag: "🇮🇴"),
        Country(name: "Colombia", flag: "🇨🇴"),
        Country(name: "Turks & Caicos Islands", flag: "🇹🇨"),
        Country(name: "Monaco", flag: "🇲🇨"),
        Country(name: "Lesotho", flag: "🇱🇸"),
        Country(name: "Equatorial Guinea", flag: "🇬🇶"),
        Country(name: "Tunisia", flag: "🇹🇳"),
        Country(name: "Ethiopia", flag: "🇪🇹"),
        Country(name: "Tonga", flag: "🇹🇴"),
        Country(name: "Gibraltar", flag: "🇬🇮"),
        Country(name: "Armenia", flag: "🇦🇲"),
        Country(name: "Ascension Island", flag: "🇦🇨"),
        Country(name: "Zimbabwe", flag: "🇿🇼"),
        Country(name: "Vietnam", flag: "🇻🇳"),
        Country(name: "Zambia", flag: "🇿🇲"),
        Country(name: "Samoa", flag: "🇼🇸"),
        Country(name: "Mayotte", flag: "🇾🇹"),
        Country(name: "Vanuatu", flag: "🇻🇺"),
        Country(name: "Yemen", flag: "🇾🇪"),
        Country(name: "Tuvalu", flag: "🇹🇻"),
        Country(name: "Guadeloupe", flag: "🇬🇵"),
        Country(name: "Mozambique", flag: "🇲🇿"),
        Country(name: "Kiribati", flag: "🇰🇮"),
        Country(name: "Grenada", flag: "🇬🇩"),
        Country(name: "Uganda", flag: "🇺🇬"),
        Country(name: "Martinique", flag: "🇲🇶"),
        Country(name: "Iceland", flag: "🇮🇸"),
        Country(name: "Bolivia", flag: "🇧🇴"),
        Country(name: "Oman", flag: "🇴🇲"),
        Country(name: "Guatemala", flag: "🇬🇹"),
        Country(name: "Ghana", flag: "🇬🇭"),
        Country(name: "Mauritius", flag: "🇲🇺"),
        Country(name: "Jordan", flag: "🇯🇴"),
        Country(name: "Palau", flag: "🇵🇼"),
        Country(name: "Mali", flag: "🇲🇱"),
        Country(name: "Burundi", flag: "🇧🇮"),
        Country(name: "Togo", flag: "🇹🇬"),
        Country(name: "Laos", flag: "🇱🇦"),
        Country(name: "Guinea", flag: "🇬🇳"),
        Country(name: "Cameroon", flag: "🇨🇲"),
        Country(name: "Albania", flag: "🇦🇱"),
        Country(name: "Cambodia", flag: "🇰🇭"),
        Country(name: "Brunei", flag: "🇧🇳"),
        Country(name: "Timor-Leste", flag: "🇹🇱"),
        Country(name: "Moldova", flag: "🇲🇩"),
        Country(name: "Dominica", flag: "🇩🇲"),
        Country(name: "Bangladesh", flag: "🇧🇩"),
        Country(name: "Syria", flag: "🇸🇾"),
        Country(name: "Argentina", flag: "🇦🇷"),
        Country(name: "Niger", flag: "🇳🇪"),
        Country(name: "Andorra", flag: "🇦🇩"),
        Country(name: "Uzbekistan", flag: "🇺🇿"),
        Country(name: "Malta", flag: "🇲🇹"),
        Country(name: "Jamaica", flag: "🇯🇲"),
        Country(name: "Bahamas", flag: "🇧🇸"),
        Country(name: "Israel", flag: "🇮🇱"),
        Country(name: "Estonia", flag: "🇪🇪"),
        Country(name: "Bahrain", flag: "🇧🇭"),
        Country(name: "Guyana", flag: "🇬🇾"),
        Country(name: "Cyprus", flag: "🇨🇾"),
        Country(name: "Suriname", flag: "🇸🇷"),
        Country(name: "Chile", flag: "🇨🇱"),
        Country(name: "Belize", flag: "🇧🇿"),
        Country(name: "Tanzania", flag: "🇹🇿"),
        Country(name: "Iraq", flag: "🇮🇶"),
        Country(name: "Bermuda", flag: "🇧🇲"),
        Country(name: "Tokelau", flag: "🇹🇰"),
        Country(name: "Haiti", flag: "🇭🇹"),
        Country(name: "Barbados", flag: "🇧🇧"),
        Country(name: "Niue", flag: "🇳🇺"),
        Country(name: "Antarctica", flag: "🇦🇶"),
        Country(name: "Uruguay", flag: "🇺🇾"),
        Country(name: "Rwanda", flag: "🇷🇼"),
        Country(name: "Montserrat", flag: "🇲🇸"),
        Country(name: "Fiji", flag: "🇫🇯"),
        Country(name: "Ecuador", flag: "🇪🇨"),
        Country(name: "Chad", flag: "🇹🇩"),
        Country(name: "Peru", flag: "🇵🇪"),
        Country(name: "Guinea-Bissau", flag: "🇬🇼"),
        Country(name: "Somalia", flag: "🇸🇴"),
        Country(name: "Nicaragua", flag: "🇳🇮"),
        Country(name: "Greenland", flag: "🇬🇱"),
        Country(name: "Malawi", flag: "🇲🇼"),
        Country(name: "Kenya", flag: "🇰🇪"),
        Country(name: "Belarus", flag: "🇧🇾"),
        Country(name: "Taiwan", flag: "🇹🇼"),
        Country(name: "Qatar", flag: "🇶🇦"),
        Country(name: "Mongolia", flag: "🇲🇳"),
        Country(name: "Eritrea", flag: "🇪🇷"),
        Country(name: "Croatia", flag: "🇭🇷"),
        Country(name: "Djibouti", flag: "🇩🇯"),
        Country(name: "Nauru", flag: "🇳🇷"),
        Country(name: "Angola", flag: "🇦🇴"),
        Country(name: "Namibia", flag: "🇳🇦"),
        Country(name: "Comoros", flag: "🇰🇲"),
        Country(name: "Georgia", flag: "🇬🇪"),
        Country(name: "Madagascar", flag: "🇲🇬"),
        Country(name: "Algeria", flag: "🇩🇿"),
        Country(name: "Panama", flag: "🇵🇦"),
        Country(name: "Guam", flag: "🇬🇺"),
        Country(name: "Senegal", flag: "🇸🇳"),
        Country(name: "Kuwait", flag: "🇰🇼"),
        Country(name: "Afghanistan", flag: "🇦🇫"),
        Country(name: "Maldives", flag: "🇲🇻"),
        Country(name: "Botswana", flag: "🇧🇼"),
        Country(name: "Turkmenistan", flag: "🇹🇲"),
        Country(name: "Luxembourg", flag: "🇱🇺"),
        Country(name: "Kyrgyzstan", flag: "🇰🇬"),
        Country(name: "Tajikistan", flag: "🇹🇯")
    ])
}
