#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [ "$#" -eq 0 ];
then
echo "Please provide an element as an argument."

else
# check if argument is a number
if [[ $1 =~ ^[0-9]+$  ]]
then
ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number = $1");
else
ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE symbol='$1' OR name='$1'");
fi

if [[ ! -z $ATOMIC_NUMBER ]]
then
# if not null, then
# fetch Name
NAME=$($PSQL "SELECT name FROM elements WHERE atomic_number=$ATOMIC_NUMBER");
# fetch Symbol
SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE atomic_number=$ATOMIC_NUMBER");
# fetch Type_ID
TYPE_ID=$($PSQL "SELECT type_id FROM properties WHERE atomic_number=$ATOMIC_NUMBER");
TYPE=$($PSQL "SELECT type FROM types WHERE type_id=$TYPE_ID");
# fetch Mass
MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number=$ATOMIC_NUMBER");
# fetch melting_point_celsius
MELT=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number=$ATOMIC_NUMBER");
# fetch boiling_point_celsius
BOIL=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number=$ATOMIC_NUMBER");

echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELT celsius and a boiling point of $BOIL celsius."
else
echo "I could not find that element in the database."
fi
fi