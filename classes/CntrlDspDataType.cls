/**
 * @description 레코드의 데이터 타입 표시 테스트용 화면 컨트롤러
 */
public with sharing class CntrlDspDataType {

    /**
     * @description 부모 레코드(화면 표시용)
     */
    public Parent__c parents { get; set; }

    /**
     * @description 자식 레코드(화면 표시용)
     */
    public List<Child__c> childList { get; set; }

    /**
     * @description 생성자
     */
    public CntrlDspDataType(ApexPages.StandardController stdController) {

        // 화면 표시용 부모 레코드 습득(가장 마지막에 등록한 레코드)
        parents = getParents();

        // 화면 표시용 자식 레코드 습득
        childList = getChildList();
    }

    /**
     * @description 부모 레코드 습득
     */
    private Parent__c getParents() {

        List<Parent__c> parentsList = [
            SELECT
                Id,
                Url__c,
                LongTextArea__c,
                Date__c,
                Datetime__c,
                Percent__c,
                Parents__c,
                Parents__r.Text__c,
                SelectList__c,
                SelectListMultiple__c,
                DateFomula__c,
                PercentFomula__c,
                DecimalFomula__c,
                TimeFomula__c,
                TextFomula__c,
                CurrencyFomula__c,
                BooleanFomula__c,
                Decimal__c,
                MaxDecimal__c,
                MinDecimal__c,
                SumDecimal__c,
                Time__c,
                OldestDate__c,
                Email__c,
                AutoNumber__c,
                Phone__c,
                LastestDate__c,
                Text__c,
                TextEncryption__c,
                TextArea__c,
                Currency__c,
                MaxCurrency__c,
                MinCurrency__c,
                SumCurrency__c,
                Boolean__c
            FROM
                Parent__c
            ORDER BY
                CreatedDate Desc
        ];

        return parentsList.get(0);
    }

    /**
     * @description 자식 레코드 습득
     */
    private List<Child__c> getChildList() {

        List<Child__c> childList = [
            SELECT
                Id,
                Date__c,
                Parents__c,
                Decimal__c,
                Currency__c
            FROM
                Child__c
        ];

        return childList;
    }
}
