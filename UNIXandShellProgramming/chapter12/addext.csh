#!/bin/csh

foreach i ([A-Z]*)
	mv $i $i.new
end
