# WebFormsAzureSqlApp

I did some work on your suggested tests. 
For example, I created a database, table, stored procedures in order toperform crud operations within the Asp.Net Web Form app.

Azure Sql Server with database is hosted on azure. Databaseis a bit slow. 
I did not use a load balancer and caching. 

Servername: webformsazuresqlappserver.database.windows.net

I developed an asp.net web form application which has one form.
I used Entity framework ado.net with data first approach. 

Afteraccessing the data I used EntityDataSource to populate the dummy Customer datain GridView.
I also used the DetailsViews to insert new Customers. 

So, Web Form application along with Azure SQL database successfullydeployed on Azure under the same resource group 
and can be accessed via url. Notgood design and there is no client or server side validation and no testing.  
http://webformsapp.azurewebsites.net/ 

I created a Web API using Linq to SQL classes approach toaccess data within the apis. 
However, angularjs app is not ready yet. I need oneweek to complete it. 
I did some work in the past on AngularJs, however I need to go through some documentation to finalize it.

Complete Web Form project source code is available on github account and can be accessed via this 
link.https://github.com/elixirhand/WebFormsAzureSqlApp 

# Please let me know your thoughts via email if is possible. 

