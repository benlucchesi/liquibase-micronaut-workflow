
package liquibaseworkflow

import grails.gorm.annotation.Entity

@Entity
class MyDomainObject {

  Date dateCreated
  Date lastUpdated

  String firstName
  String lastName

  static constraints = {
    firstName blank: false
    lastName  blank: false
  }

  static mapping = {
    autoTimestamp true
  }

}
