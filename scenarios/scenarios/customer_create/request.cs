﻿using Balanced;
using System.Collections.Generic;

Balanced.Balanced.configure("ak-test-DXIgzoqwN4LsoCabloqy87y42qwm1lXR");

Customer customer = Customer.new();
Dictionary<string, string> address = new Dictionary<string, string>();
address.Add("postal_code", "{{ payload.address.["postal_code"] }}");
          
customer.name = "{{payload.name}}";
customer.dob_month = "{{payload.dob_month}}";
customer.dob_year = "{{payload.dob_year}}";
customer.address = address;
customer.Save();