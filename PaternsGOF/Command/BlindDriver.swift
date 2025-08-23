final class BlindDriver {
    private var heightLevel: Int
    
    init(heightLevel: Int = 0) {
        self.heightLevel = heightLevel
    }
    
    func getHeightLevel() -> Int { heightLevel }
    func set(height: Int) { self.heightLevel = height }
}
