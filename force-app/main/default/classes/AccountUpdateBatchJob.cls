global class AccountUpdateBatchJob implements Database.Batchable<sObject> 

{

    global Database.QueryLocator start(Database.BatchableContext BC) 

    {

        String query = 'SELECT Id,Name FROM Account';

        

        return Database.getQueryLocator(query);

    }

    global void execute(Database.BatchableContext BC, List<Account> scope) 

    {

        for(Account a : scope)

        {

            a.Name = a.Name + ' Updated 02 December 2021';

        }

        update scope;

    }

    global void finish(Database.BatchableContext BC) {

    }

}