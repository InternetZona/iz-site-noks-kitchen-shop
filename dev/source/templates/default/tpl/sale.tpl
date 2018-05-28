{extends file="tpl/catalog.inner.tpl"}

{block name=catalogParams}
    {assign var=params value=[
        'parent'    => 21
        ,'sort' => 'publishedon'
        ,'dir'  => 'desc'
        ,'filtering'    => [
            'issale'    => 1
        ]
    ]}
{/block}