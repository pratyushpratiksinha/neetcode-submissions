class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var minPrice = prices[0]

        for i in 1..<prices.count {
            minPrice = min(prices[i], minPrice)
            maxProfit = max(maxProfit, prices[i] - minPrice)
        }

        return maxProfit
    }
}
