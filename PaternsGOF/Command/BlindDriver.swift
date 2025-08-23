final class BlindDriver {
    private var heightLevel: Int
    
    init(heightLevel: Int) {
        self.heightLevel = heightLevel
    }
    
    func getHeightLevel() -> Int { heightLevel }
    func set(height: Int) { self.heightLevel = height }
}
