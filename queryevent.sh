#!/bin/bash

thirtyminsago=`date -d "30 minutes ago" --iso-8601=seconds`

puppet query "events[certname, timestamp, resource_title, containing_class,message, old_value, new_value]{ corrective_change = true and timestamp > \"${thirtyminsago}\"}"
