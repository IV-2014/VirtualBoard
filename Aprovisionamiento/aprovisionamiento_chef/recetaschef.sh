#!/bin/bash

mkdir -p chef/cookbooks/apache2/recipes
mkdir -p chef/cookbooks/mysql/recipes
mkdir -p chef/cookbooks/php/recipes
mkdir -p chef/cookbooks/git/recipes

echo package \'apache2\' > chef/cookbooks/apache2/recipes/default.rb
echo package \'python-mysqldb\' » chef/cookbooks/mysql/recipes/default.rb
echo package \'mysql-server\' » chef/cookbooks/mysql/recipes/default.rb
echo package \'mysql-client\' » chef/cookbooks/mysql/recipes/default.rb
echo package \'phpadmin\' > chef/cookbooks/php/recipes/default.rb
echo package \'php-mysql\' » chef/cookbooks/php/recipes/default.rb
echo package \'php5\' » chef/cookbooks/php/recipes/default.rb
echo package \'git\' > chef/cookbooks/git/recipes/default.rb

echo "{
  \"run_list\": [
                \"recipe[apache2]\",
                \"recipe[mysql]\",
                \"recipe[php]\" ,
		\"recipe[git]\"
    ] 
}" > chef/cookbooks/node.json


