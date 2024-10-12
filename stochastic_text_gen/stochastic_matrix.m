function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    % build the stochastic matrix. Bonus if it is sparse
    % The 'stochastic' matrix SHOULD NOT be scaled (divided by sum of all)
    % It should just be entry-wise
    % This is how the checker tests it, to not have to deal with floating point errors
    
    num_words = length(words_set);
    num_k_secvs = length(k_secv_set);
    word_id = word_idx(words_set);
    k_secv_id = k_secv_idx(k_secv_set);
    S  = sparse(num_k_secvs, num_words);
    for i = 1: length(corpus_words) - k
        if i+k <= length(corpus_words)
            current = strjoin(corpus_words(i:i+k-1), ' ');
            next = corpus_words{i+k};
            if k_secv_id.isKey(current) && word_id.isKey(next)
                S(k_secv_id(current), word_id(next)) = S(k_secv_id(current), word_id(next)) + 1;
            end
        end
    end
    retval = S;
end
