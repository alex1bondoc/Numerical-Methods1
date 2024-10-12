%functie care calculeaza precision, reacall si F1, dar nu a fost utilizata deoarece nu-mi dadeau testele
function [precision recall F1] = metrics(true_pozitives, false_pozitives, false_negatives)
    precision = 0;
    if true_positives + false_positives > 0
    precision = true_pozitives / (true_positives + false_positives);
    recall = 0;
    if true_positives + false_negatives > 0
    recall = true_positives/(true_pozitives + false_negatives);
    F1 = 0;
    if precision+recall> 0
    F1 = (2 * precision * recall) / (precision+recall);
endfunction