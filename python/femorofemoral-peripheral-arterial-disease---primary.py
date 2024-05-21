# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"7A49.11","system":"readv2"},{"code":"7A4A000","system":"readv2"},{"code":"7A49.00","system":"readv2"},{"code":"7A4Ay00","system":"readv2"},{"code":"7A49200","system":"readv2"},{"code":"7A4B200","system":"readv2"},{"code":"7A49.13","system":"readv2"},{"code":"7A49z00","system":"readv2"},{"code":"7A48y00","system":"readv2"},{"code":"7A49800","system":"readv2"},{"code":"7A47.15","system":"readv2"},{"code":"7A4B800","system":"readv2"},{"code":"7A48z00","system":"readv2"},{"code":"7A48.00","system":"readv2"},{"code":"7A47.16","system":"readv2"},{"code":"7A4B000","system":"readv2"},{"code":"7A48.16","system":"readv2"},{"code":"7A47y00","system":"readv2"},{"code":"7A47.13","system":"readv2"},{"code":"7A4A.11","system":"readv2"},{"code":"7A47z00","system":"readv2"},{"code":"7A47.00","system":"readv2"},{"code":"7A48.12","system":"readv2"},{"code":"7A50200","system":"readv2"},{"code":"7A4B900","system":"readv2"},{"code":"7A49000","system":"readv2"},{"code":"7A4A200","system":"readv2"},{"code":"7A49.15","system":"readv2"},{"code":"7A4A.00","system":"readv2"},{"code":"7A4A.14","system":"readv2"},{"code":"7A48.14","system":"readv2"},{"code":"7A4A212","system":"readv2"},{"code":"7A49y00","system":"readv2"},{"code":"7A49400","system":"readv2"},{"code":"7A49600","system":"readv2"},{"code":"L59","system":"readv2"},{"code":"L62","system":"readv2"},{"code":"L60","system":"readv2"},{"code":"L58.9","system":"readv2"},{"code":"L65.3","system":"readv2"},{"code":"L58","system":"readv2"},{"code":"L60.3","system":"readv2"},{"code":"L58.8","system":"readv2"},{"code":"L62.2","system":"readv2"},{"code":"L60.1","system":"readv2"},{"code":"L60.4","system":"readv2"},{"code":"L62.9","system":"readv2"},{"code":"L60.2","system":"readv2"},{"code":"L63.5","system":"readv2"},{"code":"L62.1","system":"readv2"},{"code":"L63.2","system":"readv2"},{"code":"L60.9","system":"readv2"},{"code":"L62.8","system":"readv2"},{"code":"L63.1","system":"readv2"},{"code":"L59.9","system":"readv2"},{"code":"L59.8","system":"readv2"},{"code":"L60.8","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('peripheral-arterial-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["femorofemoral-peripheral-arterial-disease---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["femorofemoral-peripheral-arterial-disease---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["femorofemoral-peripheral-arterial-disease---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
