
param adfName string

resource adf 'Microsoft.DataFactory/factories@2018-06-01' existing = {
  name: adfName
}


resource LS_ASQL_sdi_hospital 'Microsoft.DataFactory/factories/linkedservices@2018-06-01' = {
  name: 'LS_ASQL_sdi_hospital'
  parent: adf
  properties: {
    type: 'AzureSqlDatabase'
    typeProperties: {
           connectionString: '[PLACEHOLDER]'
    }
  }
  dependsOn: []
}

resource LS_ASQL_sdi_hospital_raw_output 'Microsoft.DataFactory/factories/linkedservices@2018-06-01' = {
  name: 'LS_ASQL_sdi_hospital_raw_output'
  parent: adf
  properties: {
    type: 'AzureSqlDatabase'
    typeProperties: {
           connectionString: '[PLACEHOLDER]'
    }
  }
  dependsOn: []
}


resource DS_ASQL_sdi_hospital 'Microsoft.DataFactory/factories/datasets@2018-06-01' = {
    name: 'DS_ASQL_sdi_hospital'
    parent: adf
    properties: {
        type: 'AzureSqlTable'
        linkedServiceName: {
            referenceName: LS_ASQL_sdi_hospital.name
            type: 'LinkedServiceReference'
        }
             parameters: {
                     schema: {
                         type: 'string'
                     }
                     table: {
                         type: 'string'
                     }
             }
        typeProperties: {
                     schema: {
                                 value: '@dataset().schema'
                                 type: 'Expression'
                     }
                     table: {
                                 value: '@dataset().table'
                                 type: 'Expression'
                     }
        }
    }
    dependsOn: []
}

resource DS_ASQL_sdi_hospital_raw_output 'Microsoft.DataFactory/factories/datasets@2018-06-01' = {
    name: 'DS_ASQL_sdi_hospital_raw_output'
    parent: adf
    properties: {
        type: 'AzureSqlTable'
        linkedServiceName: {
            referenceName: LS_ASQL_sdi_hospital_raw_output.name
            type: 'LinkedServiceReference'
        }
             parameters: {
                     schema: {
                         type: 'string'
                     }
                     table: {
                         type: 'string'
                     }
             }
        typeProperties: {
                     schema: {
                                 value: '@dataset().schema'
                                 type: 'Expression'
                     }
                     table: {
                                 value: '@dataset().table'
                                 type: 'Expression'
                     }
        }
    }
    dependsOn: []
}
