<apex:page standardController="Parent__c" extensions="CntrlDspDataType" sidebar="false">
    <apex:form id="form">
        <apex:sectionHeader title="데이터 타입 표시 테스트"/>

        <apex:pageBlock>
            <apex:pageBlockSection columns="1" showHeader="true" collapsible="true" title="부모">
                <apex:outputField value="{!parents.AutoNumber__c}"/>
                <apex:outputField value="{!parents.SelectList__c}"/>
                <apex:outputField value="{!parents.SelectListMultiple__c}"/>
                <apex:outputField value="{!parents.Date__c}"/>
                <apex:outputField value="{!parents.Datetime__c}"/>
                <apex:outputField value="{!parents.Time__c}"/>
                <apex:outputField value="{!parents.Text__c}"/>
                <apex:outputField value="{!parents.TextEncryption__c}"/>
                <apex:outputField value="{!parents.TextArea__c}"/>
                <apex:outputField value="{!parents.LongTextArea__c}"/>
                <apex:outputField value="{!parents.Url__c}"/>
                <apex:outputField value="{!parents.Email__c}"/>
                <apex:outputField value="{!parents.Phone__c}"/>
                <apex:outputField value="{!parents.Decimal__c}"/>
                <apex:outputField value="{!parents.Currency__c}"/>
                <apex:outputField value="{!parents.Percent__c}"/>
                <apex:outputField value="{!parents.Boolean__c}"/>
            </apex:pageBlockSection>

            <apex:pageBlockSection columns="1" showHeader="true" collapsible="true" title="롤업 요약">
                <apex:outputField value="{!parents.LastestDate__c}"/>
                <apex:outputField value="{!parents.OldestDate__c}"/>
                <apex:outputField value="{!parents.MaxDecimal__c}"/>
                <apex:outputField value="{!parents.MinDecimal__c}"/>
                <apex:outputField value="{!parents.SumDecimal__c}"/>
                <apex:outputField value="{!parents.MaxCurrency__c}"/>
                <apex:outputField value="{!parents.MinCurrency__c}"/>
                <apex:outputField value="{!parents.SumCurrency__c}"/>
            </apex:pageBlockSection>

            <apex:pageBlockSection columns="1" showHeader="true" collapsible="true" title="조회 관계">
                <apex:outputField value="{!parents.Parents__c}"/>
                <!-- 조회 관계로 참조중인 레코드의 항목을 참조하는 방법 : __r.[항목명] -->
                <apex:outputField value="{!parents.Parents__r.Text__c}"/>
            </apex:pageBlockSection>

            <apex:pageBlockSection columns="1" showHeader="true" collapsible="true" title="수식">
                <apex:outputField value="{!parents.TextFomula__c}"/>
                <apex:outputField value="{!parents.DecimalFomula__c}"/>
                <apex:outputField value="{!parents.CurrencyFomula__c}"/>
                <apex:outputField value="{!parents.PercentFomula__c}"/>
                <apex:outputField value="{!parents.DateFomula__c}"/>
                <apex:outputField value="{!parents.TimeFomula__c}"/>
                <apex:outputField value="{!parents.BooleanFomula__c}"/>
            </apex:pageBlockSection>
        </apex:pageBlock>

        <apex:pageBlock>
            <apex:pageBlockTable value="{!childList}" var="child" rendered="{!childList.size > 0}">
                    <apex:column value="{!child.Parents__c}"/>
                    <apex:column value="{!child.Decimal__c}"/>
                    <apex:column value="{!child.Currency__c}"/>
                    <apex:column value="{!child.Date__c}"/>
                </apex:pageBlockTable>
        </apex:pageBlock>
    </apex:form>
</apex:page>