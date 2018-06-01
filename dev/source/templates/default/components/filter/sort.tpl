<select name="sorting" class="filter__control filter__control--sorting">
    <option value="">-</option>
    {$selected = ($smarty.get.sorting == "price_asc") ? 'selected' : ''}
    <option value="price_asc" {$selected}>по возрастанию</option>
    {$selected = ($smarty.get.sorting == "price_desc") ? 'selected' : ''}
    <option value="price_desc" {$selected}>по убыванию</option>
</select>