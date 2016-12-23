function perform=performa(Query, ImRetrieval)
    %
    % Query Dimension = string
    % ImRetrieaval Dimensin = cell 1x40
    tp=0;
    labelQuery=strsplit(Query, '_');
    for i=1:size(ImRetrieval,2)
        labelImRetrieval=char(ImRetrieval{i});
        labelImRetrieval=strsplit(labelImRetrieval, '_');
        if strcmp(labelQuery(1),labelImRetrieval(1))==1 && strcmp(labelQuery(2),labelImRetrieval(2))==1
            tp=tp+1;
        end
    end
    
    fn=40-tp;
    fp=fn;
    
    acc=tp/40;
    prec=tp/(tp+fp);
    recc=tp/(tp+fn);
    
    perform=[acc prec recc];
end