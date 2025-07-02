import Foundation

enum Config {

    // MARK: - App Info
    static let appID = "..."
    static let bundleID = "pdf.editor.compressor"
    static let extensionBundleID: String? = nil
    static let appGroupID: String? = nil

    // MARK: - API Keys
    /// PDF.co — used for converting Word to PDF
    static var pdfcoAPIKey: String {
        let p1 = "ashlyngairuy554@gmail.com_"
        let p2 = "FPoTHG0On0CjfnT4"
        let p3 = "LkU83gA0Zb9vzzg"
        let p4 = "hyxg5Hm5oHJIW5RWDA"
        let p5 = "kWJnjlguPa6uoZX"
        return p1 + p2 + p3 + p4 + p5
    }

    /// Apphud — used for in-app purchases and subscriptions
    static var apphudAPIKey: String {
        let a1 = "app_U3r"
        let a2 = "xoBYPkj7v"
        let a3 = "3RL1UMcYou"
        let a4 = "bevTa4aa"
        return a1 + a2 + a3 + a4
    }

    // MARK: - Legal
    static let privacyPolicyURL = URL(string: "https://docs.google.com/document/d/18rIdI4veloEUU6QxCV8ixatOlQmvT9tPPYsbF2kGF2U/edit?usp=sharing")!
    static let termsOfUseURL = URL(string: "https://docs.google.com/document/d/1mp8-oxWgzUevlynkK9V_TJjm2kSSBAk5yr6RI7xS3Qc/edit?usp=sharing")!
    
    // MARK: - Contact
    static let contactEmail = "ashlyngairuy554@gmail.com"
}
