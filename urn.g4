/*
 * URN-like grammar for internal static analysis purposes
 * Meant for use with ANTLR.
 * Copyright (C) Maxim Menshikov 2019-2020
 */
grammar urn;

IDENTIFIER
    : [a-zA-Z_] [a-zA-Z0-9_]*
    ;
NUMERIC_ID
    : [0-9]+
    ;
DIGIT
    : [0-9]
    ;
concept_type
    : 'res'
    | 'fr'
    | 'vmir'
    ;
name
    : IDENTIFIER
    ;
type
    : IDENTIFIER
    ;
id
    : NUMERIC_ID
    ;
action
    : 'create'
    | 'destroy'
    | 'associate'
    | 'transform'
    | 'clone'
    | 'add'
    | 'remove'
    | 'filter'
    | 'smt'
    | 'ai'
    | 'load'
    | 'unload'
    | 'load-global'
    ;
urn
    : '(' id '|' concept_type ')'
    | '(' name ':' id '|' concept_type ')'
    | '(' name ':' type '|' concept_type ')'
    | '(' name ':' type ':' id '|' concept_type ')'
    | '(' id '|' concept_type '/' action ')'
    ;
