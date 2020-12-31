output "pubinstance_id"{
    value =  aws_instance.pivot_gocd_agent.id
}

output "pvtinstance_id"{
    value = aws_instance.pvt.id
}