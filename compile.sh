#!/bin/bash

hugo
rm -r docs
mv public docs
