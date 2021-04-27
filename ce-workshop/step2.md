Login into the [steadybit platform](https://platform.steadybit.com) using the credentials provided by your instructor.

On the [Agents Page](https://platform.steadybit.io/settings/agents/installed) click on the `Add Agent` button to see what instructions to install the agent.

We use helm as the installation method, for Kubernetes this is the easiest way to install the agent to your cluster.

Copy the instructions to your clipboard and execute them in your terminal.

To verify if the agent was installed correctly check the pods:
`kubectl get pods -n steadybit-agent`{{execute}}