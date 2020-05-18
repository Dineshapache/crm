public class LearningAuraController {
     
    @AuraEnabled
    Public static Map<string, List<string>> getMap(){ 
        Map<String, List<string>> MapOfData = new Map<String, List<string>>();
        List<string> fruits = new List<String>{'Apple', 'Orange', 'Banana', 'Grapes'};
        List<string> vegetables = new List<String>{'Cabbage', 'Carrot', 'Potato', 'Tomato'};
        MapOfData.put('Fruits', fruits);
        MapOfData.put('Vegetables', vegetables);  
        return MapOfData;
    }
}