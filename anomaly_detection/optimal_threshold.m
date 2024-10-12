% Finds the best threshold to use for selecting outliers.
function [best_epsilon best_F1 associated_precision associated_recall] = optimal_threshold(truths, probabilities)
    %initializam valorile
    best_epsilon = 0;
    best_F1 = 0;
    associated_precision = 0;
    associated_recall = 0;

    %initializam marimea pasului ca dupa sa o folosim in for
    step = (max(probabilities)- min(probabilities)) / 1000;

    %incercam fiecare epsilon din range pentru a vedea la care obtinem valoarea F1 maxim, careia ii va fi corespunzatoare valorile epsilos, precision si recall
    for epsilon = min(probabilities):step:max(probabilities)
        predictions = probabilities < epsilon;
        [fp, fn, tp] = check_predictions(predictions, truths);
        if tp + fp > 0
            precision = tp / (tp+fp);
        else 
            precision = 0;
        end
        if tp + fn > 0
            recall = tp/(tp+fn);
        else 
            recall = 0;
        end
        if precision + recall > 0
            F1 = (2 * precision * recall)/(precision+ recall);
        else 
            F1 = 0;
        end
        if F1 > best_F1
            best_F1 = F1;
            best_epsilon = epsilon;
            associated_precision = precision;
            associated_recall = recall;
        end
    end
endfunction
