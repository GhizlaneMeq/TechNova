<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.css" rel="stylesheet" />
    <title>User List</title>
</head>
<body class="bg-gray-900 text-gray-300">
<div class="p-4 sm:ml-64">
    <div class="p-4 border-2 border-gray-700 border-dashed rounded-lg">

        <section class="px-11 m-auto">
            <div class="sm:flex sm:items-center sm:justify-between">
                <h2 class="text-lg font-medium text-white">List of Users</h2>

                <div class="flex items-center mt-4 gap-x-3">
                    <a href="users/create" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800">Add User</a>
                </div>
            </div>

            <div class="flex flex-col mt-6">
                <div class="-mx-4 -my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
                    <div class="inline-block min-w-full py-2 align-middle md:px-6 lg:px-8">
                        <div class="overflow-hidden border border-gray-700 md:rounded-lg">
                            <table class="min-w-full divide-y divide-gray-700">
                                <thead class="bg-gray-800">
                                <tr>
                                    <th scope="col" class="py-3.5 px-4 text-sm font-normal text-left text-gray-400">
                                        <div class="flex items-center gap-x-3">
                                            <input type="checkbox" class="text-blue-500 border-gray-600 rounded dark:bg-gray-900 dark:ring-offset-gray-900 dark:border-gray-600">
                                            <span>ID</span>
                                        </div>
                                    </th>

                                    <th scope="col" class="px-12 py-3.5 text-sm font-normal text-left text-gray-400">
                                        Name
                                    </th>

                                    <th scope="col" class="px-4 py-3.5 text-sm font-normal text-left text-gray-400">
                                        Identification Document
                                    </th>

                                    <th scope="col" class="px-4 py-3.5 text-sm font-normal text-left text-gray-400">
                                        Nationality
                                    </th>

                                    <th scope="col" class="px-4 py-3.5 text-sm font-normal text-left text-gray-400">
                                        Registration Date
                                    </th>

                                    <th scope="col" class="px-4 py-3.5 text-sm font-normal text-left text-gray-400">
                                        Account Expiration Date
                                    </th>

                                    <th scope="col" class="relative py-3.5 px-4">
                                        Actions
                                    </th>
                                </tr>
                                </thead>
                                <tbody class="bg-gray-900 divide-y divide-gray-700">
                                <c:forEach var="user" items="${users}">
                                    <tr>
                                        <td class="px-4 py-4 text-sm font-medium text-gray-300 whitespace-nowrap">
                                            <div class="inline-flex items-center gap-x-3">
                                                <p class="text-xs font-normal text-gray-400">${user.id}</p>
                                            </div>
                                        </td>
                                        <td class="px-12 py-4 text-sm font-normal text-gray-300 whitespace-nowrap">
                                            <h2 class="font-normal text-white ">${user.firstName} ${user.lastName}</h2>
                                        </td>
                                        <td class="px-4 py-4 text-sm font-normal text-gray-300 whitespace-nowrap">
                                                ${user.identificationDocument}
                                        </td>
                                        <td class="px-4 py-4 text-sm font-normal text-gray-300 whitespace-nowrap">
                                                ${user.nationality}
                                        </td>
                                        <td class="px-4 py-4 text-sm font-normal text-gray-300 whitespace-nowrap">
                                                ${user.registrationDate}
                                        </td>
                                        <td class="px-4 py-4 text-sm font-normal text-gray-300 whitespace-nowrap">
                                                ${user.accountExpirationDate}
                                        </td>
                                        <td class="px-4 py-4 text-sm whitespace-nowrap">
                                            <div class="flex gap-2">
                                                <a href="users?action=edit&id=${user.id}" class="px-4 py-2 rounded-lg text-sm font-medium text-gray-300 transition-colors duration-200 sm:text-base sm:px-6 dark:hover:bg-gray-700 hover:text-green-500">
                                                    Edit
                                                </a>
                                                <form action="users?action=delete" method="POST">
                                                    <input type="hidden" name="id" value="${user.id}">
                                                    <button type="submit" class="px-4 py-2 bg-red-500 border rounded-lg text-sm font-medium text-gray-300 transition-colors duration-200 sm:text-base sm:px-6 dark:hover:bg-gray-700 hover:bg-gray-800">
                                                        Delete
                                                    </button>
                                                </form>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script>
</body>
</html>
