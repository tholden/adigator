function x = adigatorMakeFull( x )

    if isstruct( x )
        FieldNames = fieldnames( x );
        for i = 1 : numel( FieldNames )
            FieldName = FieldNames{ i };
            for j = 1 : numel( x )
                x( j ).( FieldName ) = adigatorMakeFull( x( j ).( FieldName ) );
            end
        end
    elseif iscell( x )
        for i = 1 : numel( x )
            x{ i } = adigatorMakeFull( x{ i } );
        end
    elseif issparse( x )
        x = full( x );
    end

end
