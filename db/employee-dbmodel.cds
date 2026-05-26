namespace emp.app;

using {
    cuid,
    managed
} from '@sap/cds/common';

// Annotations-anything that srarts with @title, @valuehelp, @mandatory,
entity EMPLOYEE : cuid, managed {
    NAME       : String(255) ;
    EMAIL_ID   : String(255);
    DEPARTMENT : String(30);

}

entity DEPARTMENT : cuid {
    NAME : String(255);
}
