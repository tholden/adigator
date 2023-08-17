function x = adigatorMakeFull( x )

    if isstruct( x )
        FieldNames = fieldnames( x );
        for i = 1 : numel( FieldNames )
            FieldName = FieldNames{ i };
            x.( FieldName ) = adigatorMakeFull( x.( FieldName ) );
        end
    elseif issparse( x )
        x = full( x );
    end

end
