# Github prepare commit message

Git 커밋 시, 현재 브랜치 이름에 포함된 Jira ISSUE ID를 자동으로 커밋 메시지에 추가합니다.

## Example

👉🏼branch name containing issue ID

```text
Branch name:
- feature/ABCDEFG-12345
- hotfix/ABCDEFG-12345test
- test/ABCDEFG-12345
- test/ABCDEFG-12345-test
- test/ABCDEFG-12345test
- ABCDEFG-12345

Commit Message:
feat: xxx

Result:
[ABCDEFG-12345] feat: xxx
```

👉🏼branch name not containing issue ID

```text
Branch name:
- boot3
- test-1234
- dev-1234
- beta-1234

Commit Message:
feat: xxx

Result:
feat: xxx
```

## How to use

1. 레파지토리 목록이 있는 디렉토리로 이동합니다.

    ```shell
    $ cd yout-path/repository
   
   project1
   project2
   project3
   ...
   projectN
   ```

2. [run-create-prepare-commit-msg.sh](https://github.com/jihunparkme/github-prepare-commit-message/blob/main/script/run-create-prepare-commit-msg.sh) 파일을 다운로드 후 실행 권한을 추가합니다.

    ```shell
    $ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jihunparkme/github-prepare-commit-message/refs/heads/main/script/run-create-prepare-commit-msg.sh)"
    
    $ chmod +x run-create-prepare-commit-msg.sh
    ```

3. `run-create-prepare-commit-msg.sh` 파일을 실행합니다.

    ```shell
    $ ./run-create-prepare-commit-msg.sh
   
   # clone repository
   Cloning into 'create-prepare-commit-msg'...
   remote: Enumerating objects: 3, done.
   remote: Counting objects: 100% (3/3), done.
   remote: Compressing objects: 100% (3/3), done.
   remote: Total 3 (delta 0), reused 1 (delta 0), pack-reused 0
   Receiving objects: 100% (3/3), done.
   remote: Enumerating objects: 5, done.
   remote: Counting objects: 100% (5/5), done.
   remote: Compressing objects: 100% (4/4), done.
   remote: Total 5 (delta 1), reused 5 (delta 1), pack-reused 0
   Receiving objects: 100% (5/5), 1.21 KiB | 1.21 MiB/s, done.
   Resolving deltas: 100% (1/1), done.
   Your branch is up to date with 'origin/main'.
   
   # current repository
   repository: /Users/project
   
   # copy prepare commit msg hook to target repository
   repository: /Users/project/project1
   repository: /Users/project/project2
   /Users/project/project3/.git/hooks 디렉토리를 찾을 수 없습니다.
   ...
   repository: /Users/project/projectN
   ```

4. Jira ISSUE ID가 포함된 브랜치로 커밋을 합니다.