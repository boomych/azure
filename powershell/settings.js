{
    "IsEncrypted": false,
    "Values": {
      "AzureWebJobsStorage": "UseDevelopmentStorage=true",
      "AzureWebJobsDashboard": "UseDevelopmentStorage=true",
      "FUNCTIONS_WORKER_RUNTIME": "dotnet",
  
      // Change this
      "APPINSIGHTS_INSTRUMENTATIONKEY": "c37908ec-2e12-4ffe-8b6f-a37ee81618e2",
  
      // Change this
      "CloudConnectionString": "DefaultEndpointsProtocol=https;AccountName=dpsasteger;AccountKey=aNGr6nKUVAtaqIX6wkg8BS7iqG4vAbLOi99L/S35EzgBFXLwabgroYLArIa9pHw9zJV+ezZ+G62Hn15fSdZSTA==;EndpointSuffix=core.windows.net",
      "GlobalRadarEndpoint": "http://test.globalradarcheck.com/api/checkordername/",
      "GlobalRadarSubscriptionKey": "65287e7abd4b5e0f6cc55864cdade32703ad1d71",
      "MainQueue": "dps-service",
      "RetryQueue": "dps-service-retries",
      "DeadLetterQueue":  "dps-service-dead-letter",
      "BatchSize": "32",
      "FailureSleepTime": "120",
      "SuccessSleepTime": "60"
    }
  }