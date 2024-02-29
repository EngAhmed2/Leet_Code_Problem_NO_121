
import 'dart:math';

void main(){
  Solution s1 = Solution();
    print(s1.maxProfit([7,1,5,3,6,4]));
}


class Solution {
  int maxProfit(List<int> prices) {
    int buy = prices[0];
    int profit = 0;
    prices.removeAt(0);
    prices.forEach((price) {
        if(buy > price){
          buy = price;
        }
        else {
          profit = max(profit, (price-buy));
        }
     });
    return profit;
    
  }
}