# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"7A48200","system":"readv2"},{"code":"7A48800","system":"readv2"},{"code":"7A41000","system":"readv2"},{"code":"7A47300","system":"readv2"},{"code":"7A41600","system":"readv2"},{"code":"7A10100","system":"readv2"},{"code":"7A47100","system":"readv2"},{"code":"7A48400","system":"readv2"},{"code":"7A41C00","system":"readv2"},{"code":"7A41900","system":"readv2"},{"code":"7A41200","system":"readv2"},{"code":"7A41100","system":"readv2"},{"code":"7A47400","system":"readv2"},{"code":"7A47200","system":"readv2"},{"code":"7A48000","system":"readv2"},{"code":"7A47B00","system":"readv2"},{"code":"7A47000","system":"readv2"},{"code":"7A48C00","system":"readv2"},{"code":"7A48700","system":"readv2"},{"code":"7A48500","system":"readv2"},{"code":"7A47.11","system":"readv2"},{"code":"7A41B00","system":"readv2"},{"code":"7A48600","system":"readv2"},{"code":"7A48A00","system":"readv2"},{"code":"7A48.11","system":"readv2"},{"code":"7A48100","system":"readv2"},{"code":"7A47C00","system":"readv2"},{"code":"7A48B00","system":"readv2"},{"code":"7A47D00","system":"readv2"},{"code":"7A47700","system":"readv2"},{"code":"7A47600","system":"readv2"},{"code":"7A10000","system":"readv2"},{"code":"7A48D00","system":"readv2"},{"code":"7A48300","system":"readv2"},{"code":"7A41300","system":"readv2"},{"code":"7A41400","system":"readv2"},{"code":"L59.3","system":"readv2"},{"code":"L59.1","system":"readv2"},{"code":"L58.1","system":"readv2"},{"code":"L59.7","system":"readv2"},{"code":"L58.5","system":"readv2"},{"code":"L58.3","system":"readv2"},{"code":"L50.1","system":"readv2"},{"code":"L58.2","system":"readv2"},{"code":"L59.2","system":"readv2"},{"code":"L51.4","system":"readv2"},{"code":"L59.6","system":"readv2"},{"code":"L50.5","system":"readv2"},{"code":"L50.4","system":"readv2"},{"code":"L51.2","system":"readv2"},{"code":"L58.4","system":"readv2"},{"code":"L51.6","system":"readv2"},{"code":"L51.3","system":"readv2"},{"code":"L50.3","system":"readv2"},{"code":"L59.4","system":"readv2"},{"code":"L58.6","system":"readv2"},{"code":"L59.5","system":"readv2"},{"code":"L58.7","system":"readv2"},{"code":"L51.5","system":"readv2"},{"code":"L50.2","system":"readv2"},{"code":"L51.1","system":"readv2"},{"code":"L50.6","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('peripheral-arterial-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["peripheral-arterial-disease-anastom---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["peripheral-arterial-disease-anastom---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["peripheral-arterial-disease-anastom---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
