% if mode == 'definition':
Reversal.Save()
% elif mode == 'request':
using Balanced;
using System.Collections.Generic;

Balanced.Balanced.configure("ak-test-1xLFE6RLC1W3P4ePiQDI4UVpRwtKcdfqL");

Reversal reversal = Reversal.Fetch("/reversals/RV5xRK6ZoaXMhboMamfdfm85");
Dictionary<string, string> meta = new Dictionary<string, string>();
meta.Add("refund.reason", "user not happy with product");
meta.Add("user.notes", "very polite on the phone");
meta.Add("user.satisfaction", "6");
reversal.meta = meta;
reversal.description = "update this description";
reversal.Save();
% endif
